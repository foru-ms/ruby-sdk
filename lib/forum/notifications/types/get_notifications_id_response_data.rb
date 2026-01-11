# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class GetNotificationsIDResponseData < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :user_id, -> { String }, optional: false, nullable: false, api_name: "userId"
        field :notifier_id, -> { String }, optional: false, nullable: false, api_name: "notifierId"
        field :type, -> { String }, optional: false, nullable: true
        field :description, -> { String }, optional: false, nullable: true
        field :status, -> { String }, optional: false, nullable: true
        field :thread_id, -> { String }, optional: false, nullable: true, api_name: "threadId"
        field :post_id, -> { String }, optional: false, nullable: true, api_name: "postId"
        field :private_message_id, -> { String }, optional: false, nullable: true, api_name: "privateMessageId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "extendedData"
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
