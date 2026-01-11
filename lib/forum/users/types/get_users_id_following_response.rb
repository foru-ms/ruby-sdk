# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDFollowingResponse < Internal::Types::Model
        field :data, -> { Forum::Users::Types::GetUsersIDFollowingResponseData }, optional: false, nullable: false
      end
    end
  end
end
