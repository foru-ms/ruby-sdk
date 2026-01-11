# frozen_string_literal: true

module Forum
  module Threads
    module Types
      # Poll data
      class PatchThreadsIDResponseDataPoll < Internal::Types::Model
        field :title, -> { String }, optional: false, nullable: false
        field :options, -> { Internal::Types::Array[Forum::Threads::Types::PatchThreadsIDResponseDataPollOptionsItem] }, optional: false, nullable: false
      end
    end
  end
end
