# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class GetReportsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false
        field :limit, -> { Integer }, optional: true, nullable: false
        field :search, -> { String }, optional: true, nullable: false
      end
    end
  end
end
