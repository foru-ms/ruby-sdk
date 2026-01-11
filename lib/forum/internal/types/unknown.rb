# frozen_string_literal: true

module Forum
  module Internal
    module Types
      module Unknown
        include Forum::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
