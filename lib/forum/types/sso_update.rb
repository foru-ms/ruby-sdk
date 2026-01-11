# frozen_string_literal: true

module Forum
  module Types
    # Partial OIDC provider update
    class SSOUpdate < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false
      field :domain, -> { String }, optional: true, nullable: false
      field :client_id, -> { String }, optional: true, nullable: false, api_name: "clientId"
      field :client_secret, -> { String }, optional: true, nullable: false, api_name: "clientSecret"
      field :issuer, -> { String }, optional: true, nullable: false
      field :authorization_endpoint, -> { String }, optional: true, nullable: false, api_name: "authorizationEndpoint"
      field :token_endpoint, -> { String }, optional: true, nullable: false, api_name: "tokenEndpoint"
      field :user_info_endpoint, -> { String }, optional: true, nullable: false, api_name: "userInfoEndpoint"
      field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
