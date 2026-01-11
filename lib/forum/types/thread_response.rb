# frozen_string_literal: true

module Forum
  module Types
    class ThreadResponse < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: false
      field :body, -> { String }, optional: false, nullable: false
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
      field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      field :poll, -> { Forum::Types::ThreadResponsePoll }, optional: true, nullable: false
      field :id, -> { String }, optional: false, nullable: false
      field :slug, -> { String }, optional: false, nullable: true
      field :locked, -> { Internal::Types::Boolean }, optional: false, nullable: true
      field :pinned, -> { Internal::Types::Boolean }, optional: false, nullable: true
      field :views, -> { Integer }, optional: false, nullable: false
      field :posts_count, -> { Integer }, optional: false, nullable: false, api_name: "postsCount"
      field :last_post_at, -> { String }, optional: false, nullable: true, api_name: "lastPostAt"
      field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "extendedData"
      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
