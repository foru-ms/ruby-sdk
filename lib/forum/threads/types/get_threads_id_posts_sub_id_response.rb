# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDPostsSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDPostsSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
