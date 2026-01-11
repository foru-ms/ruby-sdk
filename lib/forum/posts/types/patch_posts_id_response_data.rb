# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class PatchPostsIDResponseData < Internal::Types::Model
        field :thread_id, -> { String }, optional: false, nullable: false, api_name: "threadId"
        field :body, -> { String }, optional: false, nullable: false
        field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
        field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
        field :id, -> { String }, optional: false, nullable: false
        field :depth, -> { Integer }, optional: false, nullable: true
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
