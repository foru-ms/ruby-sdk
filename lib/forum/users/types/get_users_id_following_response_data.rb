# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDFollowingResponseData < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Forum::Users::Types::GetUsersIDFollowingResponseDataItemsItem] }, optional: false, nullable: false
        field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
        field :count, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
