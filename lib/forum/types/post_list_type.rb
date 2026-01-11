# frozen_string_literal: true

module Forum
  module Types
    module PostListType
      extend Forum::Internal::Types::Enum

      CREATED = "created"
      LIKED = "liked"
      DISLIKED = "disliked"
      UPVOTED = "upvoted"
      DOWNVOTED = "downvoted"
    end
  end
end
