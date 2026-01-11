# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      module PatchSsoIdResponseDataProvider
        extend Forum::Internal::Types::Enum

        OKTA = "OKTA"
        AUTH0 = "AUTH0"
        SAML = "SAML"
      end
    end
  end
end
