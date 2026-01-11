# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PostThreadsIDPollRequestOptionsItem < Internal::Types::Model
        field :title, -> { String }, optional: false, nullable: false
        field :color, -> { String }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
