# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class PostWebhooksResponse < Internal::Types::Model
        field :data, -> { Forum::Webhooks::Types::PostWebhooksResponseData }, optional: true, nullable: false
      end
    end
  end
end
