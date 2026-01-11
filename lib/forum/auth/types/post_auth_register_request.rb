# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthRegisterRequest < Internal::Types::Model
        field :username, -> { String }, optional: false, nullable: false
        field :email, -> { String }, optional: false, nullable: false
        field :display_name, -> { String }, optional: true, nullable: false, api_name: "displayName"
        field :password, -> { String }, optional: false, nullable: false
        field :roles, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        field :bio, -> { String }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
