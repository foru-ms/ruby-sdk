# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
