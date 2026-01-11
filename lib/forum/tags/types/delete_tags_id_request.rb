# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class DeleteTagsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
