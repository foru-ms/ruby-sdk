# frozen_string_literal: true

module Forum
  module Roles
    module Types
      class GetRolesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Roles::Types::GetRolesResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Roles::Types::GetRolesResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
