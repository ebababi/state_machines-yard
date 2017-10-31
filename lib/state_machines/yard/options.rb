module StateMachines
  module YARD
    module CommandLineOptions
      def common_options(opts) # rubocop:disable Metrics/MethodLength
        super

        opts.separator ''
        opts.separator 'StateMachines plugin options'

        opts.on('--state-machines-generate-doc-for-auto-methods', 'Generate documentation for state machines\' auto-generated methods') do
          StateMachines::YARD::Handlers.gen_doc_for_auto_methods = true
        end

        opts.separator ''
        opts.separator 'Generic options'
      end
    end
  end
end

YARD::CLI::Command.prepend StateMachines::YARD::CommandLineOptions
