# frozen_string_literal: true

module Forum
  module Posts
    module Types
      module PostPostsIDReactionsRequestType
        extend Forum::Internal::Types::Enum

        LIKE = "LIKE"
        DISLIKE = "DISLIKE"
        UPVOTE = "UPVOTE"
        DOWNVOTE = "DOWNVOTE"
      end
    end
  end
end
