# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class PatchTagsIDResponseData < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false
        field :slug, -> { String }, optional: true, nullable: false
        field :description, -> { String }, optional: true, nullable: false
        field :color, -> { String }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
        field :id, -> { String }, optional: false, nullable: false
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
