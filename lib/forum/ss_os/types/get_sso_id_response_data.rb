# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class GetSsoIdResponseData < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :provider, -> { Forum::SsOs::Types::GetSsoIdResponseDataProvider }, optional: false, nullable: false
        field :domain, -> { String }, optional: false, nullable: false
        field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
