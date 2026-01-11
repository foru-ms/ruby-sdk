# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class GetRolesIDResponse < Internal::Types::Model
        field :data, -> { Forum::Roles::Types::GetRolesIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
