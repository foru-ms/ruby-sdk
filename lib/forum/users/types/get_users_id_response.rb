# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDResponse < Internal::Types::Model
        field :data, -> { Forum::Users::Types::GetUsersIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
