# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDSubscribersSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDSubscribersSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
