# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class PostPostsResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::PostPostsResponseData }, optional: true, nullable: false
      end
    end
  end
end
