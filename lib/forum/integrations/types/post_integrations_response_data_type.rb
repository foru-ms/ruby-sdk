# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      module PostIntegrationsResponseDataType
        extend Forum::Internal::Types::Enum

        SLACK = "SLACK"
        DISCORD = "DISCORD"
        SALESFORCE = "SALESFORCE"
        HUBSPOT = "HUBSPOT"
        OKTA = "OKTA"
        AUTH0 = "AUTH0"
      end
    end
  end
end
