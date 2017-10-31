module StateMachines
  module YARD
    # YARD custom handlers for integrating the state_machine DSL with the
    # YARD documentation system
    module Handlers
      def self.gen_doc_for_auto_methods
        @@gen_doc_for_auto_methods ||= false
      end

      def self.gen_doc_for_auto_methods=(value)
        @@gen_doc_for_auto_methods = value
      end
    end
  end
end

Dir["#{File.dirname(__FILE__)}/handlers/*.rb"].sort.each do |path|
  require "state_machines/yard/handlers/#{File.basename(path)}"
end
