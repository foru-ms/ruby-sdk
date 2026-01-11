# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDFollowersSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Users::Types::GetUsersIDFollowersSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
