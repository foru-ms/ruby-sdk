# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class GetIntegrationsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Integrations::Types::GetIntegrationsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
