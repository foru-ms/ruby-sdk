# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PatchThreadsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Threads::Types::PatchThreadsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
