# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesIDRepliesResponseData < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesResponseDataItemsItem] }, optional: false, nullable: false
        field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
        field :count, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
