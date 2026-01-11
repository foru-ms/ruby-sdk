# frozen_string_literal: true

module Forum
  module Types
    class WebhookCreate < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false
      field :url, -> { String }, optional: false, nullable: false
      field :events, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      field :secret, -> { String }, optional: true, nullable: false
    end
  end
end
