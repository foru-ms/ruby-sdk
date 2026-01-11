# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class PatchIntegrationsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Integrations::Types::PatchIntegrationsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
