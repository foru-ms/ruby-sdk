# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDFollowersResponse < Internal::Types::Model
        field :data, -> { Forum::Users::Types::GetUsersIDFollowersResponseData }, optional: false, nullable: false
      end
    end
  end
end
