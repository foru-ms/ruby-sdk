# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class DeleteRolesIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
