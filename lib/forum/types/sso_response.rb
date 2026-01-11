# frozen_string_literal: true

module Forum
  module Types
    class SSOResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
      field :provider, -> { Forum::Types::SSOResponseProvider }, optional: false, nullable: false
      field :domain, -> { String }, optional: false, nullable: false
      field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
