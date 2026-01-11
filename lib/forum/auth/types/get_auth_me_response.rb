# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class GetAuthMeResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :username, -> { String }, optional: false, nullable: false
      end
    end
  end
end
