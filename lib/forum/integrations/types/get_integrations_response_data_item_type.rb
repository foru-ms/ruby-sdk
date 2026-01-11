# frozen_string_literal: true

module Forum
  module Integrations
    module Types
      module GetIntegrationsResponseDataItemType
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
