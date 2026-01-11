# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthForgotPasswordResponse < Internal::Types::Model
        field :message, -> { String }, optional: false, nullable: false
        field :reset_token, -> { String }, optional: true, nullable: false, api_name: "resetToken"
      end
    end
  end
end
