# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class GetWebhooksIDResponse < Internal::Types::Model
        field :data, -> { Forum::Webhooks::Types::GetWebhooksIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
