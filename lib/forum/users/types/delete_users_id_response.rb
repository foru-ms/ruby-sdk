# frozen_string_literal: true

module Forum
  module Users
    module Types
      class DeleteUsersIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
