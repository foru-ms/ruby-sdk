# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class PatchTagsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :name, -> { String }, optional: true, nullable: false
        field :slug, -> { String }, optional: true, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :color, -> { String }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
