# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::GetThreadsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
