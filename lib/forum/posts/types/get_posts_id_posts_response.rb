# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsIDPostsResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::GetPostsIDPostsResponseData }, optional: false, nullable: false
      end
    end
  end
end
