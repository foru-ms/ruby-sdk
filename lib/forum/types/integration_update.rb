# frozen_string_literal: true

module Forum
  module Types
    class IntegrationUpdate < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false
      field :config, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
