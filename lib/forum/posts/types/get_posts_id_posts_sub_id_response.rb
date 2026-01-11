# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsIDPostsSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::GetPostsIDPostsSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
