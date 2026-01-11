# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class GetWebhooksIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
