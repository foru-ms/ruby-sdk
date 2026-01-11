# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class PostReportsResponse < Internal::Types::Model
        field :data, -> { Forum::Reports::Types::PostReportsResponseData }, optional: true, nullable: false
      end
    end
  end
end
