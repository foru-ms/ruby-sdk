# frozen_string_literal: true

module Forum
  module Auth
    module Types
      class PostAuthResetPasswordResponse < Internal::Types::Model
        field :message, -> { String }, optional: false, nullable: false
      end
    end
  end
end
