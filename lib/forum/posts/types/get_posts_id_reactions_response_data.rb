# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsIDReactionsResponseData < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Forum::Posts::Types::GetPostsIDReactionsResponseDataItemsItem] }, optional: false, nullable: false
        field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
        field :count, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
