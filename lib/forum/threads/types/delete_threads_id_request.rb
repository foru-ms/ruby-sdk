# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class DeleteThreadsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
