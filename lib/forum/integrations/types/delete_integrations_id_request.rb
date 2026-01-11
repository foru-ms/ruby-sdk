# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class DeleteIntegrationsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
