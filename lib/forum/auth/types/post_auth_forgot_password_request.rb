# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthForgotPasswordRequest < Internal::Types::Model
        field :email, -> { String }, optional: false, nullable: false
      end
    end
  end
end
