# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDPostsResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDPostsResponseData }, optional: false, nullable: false
      end
    end
  end
end
