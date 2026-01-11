# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class PostPostsIDReactionsResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::PostPostsIDReactionsResponseData }, optional: false, nullable: false
      end
    end
  end
end
