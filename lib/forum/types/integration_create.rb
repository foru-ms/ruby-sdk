# frozen_string_literal: true

module Forum
  module Types
    class IntegrationCreate < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: false
      field :config, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
