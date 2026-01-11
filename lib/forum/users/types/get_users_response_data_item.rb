# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersResponseDataItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :username, -> { String }, optional: false, nullable: false
        field :display_name, -> { String }, optional: false, nullable: true, api_name: "displayName"
        field :bio, -> { String }, optional: false, nullable: true
        field :signature, -> { String }, optional: false, nullable: true
        field :url, -> { String }, optional: false, nullable: true
        field :posts_count, -> { Integer }, optional: true, nullable: false, api_name: "postsCount"
        field :threads_count, -> { Integer }, optional: true, nullable: false, api_name: "threadsCount"
        field :is_online, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "isOnline"
        field :last_seen_at, -> { String }, optional: false, nullable: true, api_name: "lastSeenAt"
        field :roles, -> { Internal::Types::Array[Forum::Users::Types::GetUsersResponseDataItemRolesItem] }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "extendedData"
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
