# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDResponseDataRolesItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :name, -> { String }, optional: false, nullable: false
        field :slug, -> { String }, optional: false, nullable: true
      end
    end
  end
end
