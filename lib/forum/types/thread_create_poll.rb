# frozen_string_literal: true

module Forum
  module Types
    # Poll data
    class ThreadCreatePoll < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: false
      field :options, -> { Internal::Types::Array[Forum::Types::ThreadCreatePollOptionsItem] }, optional: false, nullable: false
    end
  end
end
