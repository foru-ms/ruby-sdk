# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class PatchRolesIDResponse < Internal::Types::Model
        field :data, -> { Forum::Roles::Types::PatchRolesIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
