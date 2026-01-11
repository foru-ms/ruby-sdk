# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class GetWebhooksIDDeliveriesResponse < Internal::Types::Model
        field :data, -> { Forum::Webhooks::Types::GetWebhooksIDDeliveriesResponseData }, optional: false, nullable: false
      end
    end
  end
end
