# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class PostPostsRequest < Internal::Types::Model
        field :thread_id, -> { String }, optional: false, nullable: false, api_name: "threadId"
        field :body, -> { String }, optional: false, nullable: false
        field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
        field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
