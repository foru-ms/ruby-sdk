# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class GetSSORequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false
        field :limit, -> { Integer }, optional: true, nullable: false
        field :search, -> { String }, optional: true, nullable: false
      end
    end
  end
end
