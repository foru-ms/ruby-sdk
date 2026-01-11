# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthLoginRequest < Internal::Types::Model
        field :login, -> { String }, optional: false, nullable: false
        field :password, -> { String }, optional: false, nullable: false
      end
    end
  end
end
