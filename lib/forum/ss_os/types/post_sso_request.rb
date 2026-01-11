# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class PostSSORequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false
        field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"
        field :client_secret, -> { String }, optional: false, nullable: false, api_name: "clientSecret"
        field :issuer, -> { String }, optional: false, nullable: false
        field :authorization_endpoint, -> { String }, optional: false, nullable: false, api_name: "authorizationEndpoint"
        field :token_endpoint, -> { String }, optional: false, nullable: false, api_name: "tokenEndpoint"
        field :user_info_endpoint, -> { String }, optional: false, nullable: false, api_name: "userInfoEndpoint"
      end
    end
  end
end
