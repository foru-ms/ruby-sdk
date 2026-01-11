# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PatchThreadsIDPollResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::PatchThreadsIDPollResponseData }, optional: false, nullable: false
      end
    end
  end
end
