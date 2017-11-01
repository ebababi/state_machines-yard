module StateMachines
  module YARD
    module Handlers
      # Handles and processes #event
      class Event < Base
        handles method_call(:event)

        def process
          if owner.is_a?(StateMachines::Machine)
            handler = self
            statement = self.statement
            names = extract_node_names(statement.parameters(false))

            names.each do |name|
              owner.event(name) do
                # Parse the block
                handler.parse_block(statement.last.last, owner: self) if statement.last.last
              end
            end
          end

          register_docstring nil
        end
      end
    end
  end
end
