# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PostThreadsIDReactionsResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::PostThreadsIDReactionsResponseData }, optional: false, nullable: false
      end
    end
  end
end
