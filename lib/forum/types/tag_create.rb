# frozen_string_literal: true

module Forum
  module Types
    class TagCreate < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false
      field :slug, -> { String }, optional: true, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :color, -> { String }, optional: true, nullable: false
      field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
    end
  end
end
