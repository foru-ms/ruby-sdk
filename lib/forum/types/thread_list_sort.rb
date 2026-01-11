# frozen_string_literal: true

module Forum
  module Types
    module ThreadListSort
      extend Forum::Internal::Types::Enum

      NEWEST = "newest"
      OLDEST = "oldest"
      ACTIVITY = "activity"
    end
  end
end
