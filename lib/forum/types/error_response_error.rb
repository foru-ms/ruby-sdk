# frozen_string_literal: true

module Forum
  module Types
    class ErrorResponseError < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false
      field :message, -> { String }, optional: false, nullable: false
      field :details, -> { Object }, optional: true, nullable: false
    end
  end
end
