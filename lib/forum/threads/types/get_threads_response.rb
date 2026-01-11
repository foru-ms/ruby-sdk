# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Threads::Types::GetThreadsResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Threads::Types::GetThreadsResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
