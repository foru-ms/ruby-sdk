# frozen_string_literal: true

module Forum
  module Users
    module Types
      class PatchUsersIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :display_name, -> { String }, optional: true, nullable: false, api_name: "displayName"
        field :bio, -> { String }, optional: true, nullable: false
        field :signature, -> { String }, optional: true, nullable: false
        field :username, -> { String }, optional: true, nullable: false
        field :email, -> { String }, optional: true, nullable: false
        field :password, -> { String }, optional: true, nullable: false
        field :url, -> { String }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
        field :roles, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
