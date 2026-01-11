# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PostThreadsResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::PostThreadsResponseData }, optional: true, nullable: false
      end
    end
  end
end
