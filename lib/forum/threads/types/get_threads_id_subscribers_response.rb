# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDSubscribersResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDSubscribersResponseData }, optional: false, nullable: false
      end
    end
  end
end
