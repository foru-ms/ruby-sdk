# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class PostRolesResponse < Internal::Types::Model
        field :data, -> { Forum::Roles::Types::PostRolesResponseData }, optional: true, nullable: false
      end
    end
  end
end
