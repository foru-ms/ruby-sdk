# frozen_string_literal: true

module Forum
  module Threads
    module Types
      # Poll data
      class GetThreadsResponseDataItemPoll < Internal::Types::Model
        field :title, -> { String }, optional: false, nullable: false
        field :options, -> { Internal::Types::Array[Forum::Threads::Types::GetThreadsResponseDataItemPollOptionsItem] }, optional: false, nullable: false
      end
    end
  end
end
