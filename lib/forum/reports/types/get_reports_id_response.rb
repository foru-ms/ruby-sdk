# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class GetReportsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Reports::Types::GetReportsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
