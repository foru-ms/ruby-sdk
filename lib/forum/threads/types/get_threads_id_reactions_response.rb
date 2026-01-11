# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDReactionsResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDReactionsResponseData }, optional: false, nullable: false
      end
    end
  end
end
