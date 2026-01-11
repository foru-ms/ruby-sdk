# frozen_string_literal: true

module Forum
  module Users
    module Types
      class PatchUsersIDResponse < Internal::Types::Model
        field :data, -> { Forum::Users::Types::PatchUsersIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
