# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDPostsResponseData < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Forum::Threads::Types::GetThreadsIDPostsResponseDataItemsItem] }, optional: false, nullable: false
        field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
        field :count, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
