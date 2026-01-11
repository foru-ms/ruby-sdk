# frozen_string_literal: true

module Forum
  module Types
    class TagList < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false
      field :cursor, -> { String }, optional: true, nullable: false
      field :search, -> { String }, optional: true, nullable: false
    end
  end
end
