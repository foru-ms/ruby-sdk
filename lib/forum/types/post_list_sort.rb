# frozen_string_literal: true

module Forum
  module Types
    module PostListSort
      extend Forum::Internal::Types::Enum

      NEWEST = "newest"
      OLDEST = "oldest"
    end
  end
end
