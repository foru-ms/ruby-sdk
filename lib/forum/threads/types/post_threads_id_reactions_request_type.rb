# frozen_string_literal: true

module Forum
  module Threads
    module Types
      module PostThreadsIDReactionsRequestType
        extend Forum::Internal::Types::Enum

        LIKE = "LIKE"
        DISLIKE = "DISLIKE"
        UPVOTE = "UPVOTE"
        DOWNVOTE = "DOWNVOTE"
      end
    end
  end
end
