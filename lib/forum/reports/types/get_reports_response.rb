# frozen_string_literal: true

module Forum
  module Reports
    module Types
      class GetReportsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Reports::Types::GetReportsResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Reports::Types::GetReportsResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
