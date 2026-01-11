# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthResetPasswordRequest < Internal::Types::Model
        field :password, -> { String }, optional: false, nullable: false
        field :old_password, -> { String }, optional: true, nullable: false, api_name: "oldPassword"
        field :email, -> { String }, optional: true, nullable: false
        field :token, -> { String }, optional: true, nullable: false
      end
    end
  end
end
