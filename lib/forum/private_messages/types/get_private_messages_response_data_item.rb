# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesResponseDataItem < Internal::Types::Model
        field :recipient_id, -> { String }, optional: false, nullable: false, api_name: "recipientId"
        field :sender_id, -> { String }, optional: true, nullable: false, api_name: "senderId"
        field :title, -> { String }, optional: true, nullable: false
        field :body, -> { String }, optional: false, nullable: false
        field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
        field :id, -> { String }, optional: false, nullable: false
        field :status, -> { String }, optional: false, nullable: true
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
