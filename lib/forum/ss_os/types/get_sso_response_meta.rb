# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class GetSSOResponseMeta < Internal::Types::Model
        field :total, -> { Integer }, optional: false, nullable: false
        field :page, -> { Integer }, optional: false, nullable: false
        field :limit, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
