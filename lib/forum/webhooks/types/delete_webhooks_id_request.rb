# frozen_string_literal: true

module Forum
  module Webhooks
    module Types
      class DeleteWebhooksIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
