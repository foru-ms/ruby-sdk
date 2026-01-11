# frozen_string_literal: true

module Forum
  module Types
    # Poll data
    class ThreadResponsePoll < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: false
      field :options, -> { Internal::Types::Array[Forum::Types::ThreadResponsePollOptionsItem] }, optional: false, nullable: false
    end
  end
end
