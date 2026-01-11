# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class GetWebhooksResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Webhooks::Types::GetWebhooksResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Webhooks::Types::GetWebhooksResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
