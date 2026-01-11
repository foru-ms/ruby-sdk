# frozen_string_literal: true

module Forum
  module Types
    class ThreadUpdate < Internal::Types::Model
      field :title, -> { String }, optional: true, nullable: false
      field :body, -> { String }, optional: true, nullable: false
      field :locked, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
    end
  end
end
