# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class PatchIntegrationsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :name, -> { String }, optional: true, nullable: false
        field :config, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
