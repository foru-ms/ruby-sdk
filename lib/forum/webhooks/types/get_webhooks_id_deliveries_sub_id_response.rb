# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class GetWebhooksIDDeliveriesSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Webhooks::Types::GetWebhooksIDDeliveriesSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
