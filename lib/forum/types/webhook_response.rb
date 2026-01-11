# frozen_string_literal: true

module Forum
  module Types
    class WebhookResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :name, -> { String }, optional: false, nullable: false
      field :url, -> { String }, optional: false, nullable: false
      field :events, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :last_triggered, -> { String }, optional: false, nullable: true, api_name: "lastTriggered"
      field :failure_count, -> { Integer }, optional: false, nullable: false, api_name: "failureCount"
      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
