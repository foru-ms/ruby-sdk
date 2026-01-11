# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class DeleteWebhooksIDDeliveriesSubIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
