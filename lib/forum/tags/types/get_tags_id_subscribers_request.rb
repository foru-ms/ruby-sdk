# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class GetTagsIDSubscribersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :cursor, -> { String }, optional: true, nullable: false
        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
