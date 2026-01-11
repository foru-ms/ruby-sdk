# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class DeletePostsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
