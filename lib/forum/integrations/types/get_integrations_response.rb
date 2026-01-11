# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class GetIntegrationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Integrations::Types::GetIntegrationsResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Integrations::Types::GetIntegrationsResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
