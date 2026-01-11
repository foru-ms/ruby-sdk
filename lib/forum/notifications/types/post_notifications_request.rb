# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class PostNotificationsRequest < Internal::Types::Model
        field :user_id, -> { String }, optional: false, nullable: false, api_name: "userId"
        field :notifier_id, -> { String }, optional: true, nullable: false, api_name: "notifierId"
        field :type, -> { String }, optional: false, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :thread_id, -> { String }, optional: true, nullable: false, api_name: "threadId"
        field :post_id, -> { String }, optional: true, nullable: false, api_name: "postId"
        field :private_message_id, -> { String }, optional: true, nullable: false, api_name: "privateMessageId"
        field :status, -> { Forum::Notifications::Types::PostNotificationsRequestStatus }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
