# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class PatchIntegrationsIDResponseData < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :type, -> { Forum::Integrations::Types::PatchIntegrationsIDResponseDataType }, optional: false, nullable: false
        field :name, -> { String }, optional: false, nullable: false
        field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
