# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class DeleteReportsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
