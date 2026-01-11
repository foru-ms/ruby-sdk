# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsIDReactionsResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::GetPostsIDReactionsResponseData }, optional: false, nullable: false
      end
    end
  end
end
