# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class DeleteReportsIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
