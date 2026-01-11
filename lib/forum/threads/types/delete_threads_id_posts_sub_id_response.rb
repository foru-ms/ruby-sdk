# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class DeleteThreadsIDPostsSubIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
