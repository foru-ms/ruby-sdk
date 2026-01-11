# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class DeleteRolesIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
