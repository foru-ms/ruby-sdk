# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class DeletePostsIDReactionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
