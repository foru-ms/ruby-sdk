# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      class PostIntegrationsResponse < Internal::Types::Model
        field :data, -> { Forum::Integrations::Types::PostIntegrationsResponseData }, optional: true, nullable: false
      end
    end
  end
end
