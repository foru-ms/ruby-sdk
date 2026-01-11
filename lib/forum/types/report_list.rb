# frozen_string_literal: true

module Forum
  module Types
    class ReportList < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false
      field :cursor, -> { String }, optional: true, nullable: false
      field :status, -> { String }, optional: true, nullable: false
      field :reporter_id, -> { String }, optional: true, nullable: false, api_name: "reporterId"
      field :reported_id, -> { String }, optional: true, nullable: false, api_name: "reportedId"
    end
  end
end
