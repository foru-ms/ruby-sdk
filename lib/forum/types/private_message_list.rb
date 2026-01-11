# frozen_string_literal: true

module Forum
  module Types
    class PrivateMessageList < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false
      field :cursor, -> { String }, optional: true, nullable: false
      field :query, -> { String }, optional: true, nullable: false
    end
  end
end
