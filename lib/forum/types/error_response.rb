# frozen_string_literal: true

module Forum
  module Types
    class ErrorResponse < Internal::Types::Model
      field :error, -> { Forum::Types::ErrorResponseError }, optional: false, nullable: false
    end
  end
end
