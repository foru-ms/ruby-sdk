# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDFollowingSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Users::Types::GetUsersIDFollowingSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
