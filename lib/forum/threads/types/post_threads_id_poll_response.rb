# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PostThreadsIDPollResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::PostThreadsIDPollResponseData }, optional: false, nullable: false
      end
    end
  end
end
