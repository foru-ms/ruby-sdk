# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class PostReportsRequest < Internal::Types::Model
        field :type, -> { String }, optional: false, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
        field :reported_id, -> { String }, optional: true, nullable: false, api_name: "reportedId"
        field :thread_id, -> { String }, optional: true, nullable: false, api_name: "threadId"
        field :post_id, -> { String }, optional: true, nullable: false, api_name: "postId"
        field :private_message_id, -> { String }, optional: true, nullable: false, api_name: "privateMessageId"
      end
    end
  end
end
