# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDPostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :cursor, -> { String }, optional: true, nullable: false
        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
