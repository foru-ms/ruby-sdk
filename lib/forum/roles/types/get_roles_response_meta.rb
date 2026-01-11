# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class GetRolesResponseMeta < Internal::Types::Model
        field :total, -> { Integer }, optional: false, nullable: false
        field :page, -> { Integer }, optional: false, nullable: false
        field :limit, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
