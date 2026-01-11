# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthRegisterResponse < Internal::Types::Model
        field :token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
