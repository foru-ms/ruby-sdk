# frozen_string_literal: true

module Forum
  module Users
    module Types
      class DeleteUsersIDFollowersSubIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
