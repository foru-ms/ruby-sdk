# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDReactionsSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDReactionsSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
