# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class PostPrivateMessagesIDRepliesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :recipient_id, -> { String }, optional: false, nullable: false, api_name: "recipientId"
        field :sender_id, -> { String }, optional: true, nullable: false, api_name: "senderId"
        field :title, -> { String }, optional: true, nullable: false
        field :body, -> { String }, optional: false, nullable: false
        field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
