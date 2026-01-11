# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDPollResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDPollResponseData }, optional: false, nullable: false
      end
    end
  end
end
