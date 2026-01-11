# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class GetIntegrationsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
