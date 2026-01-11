# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PostThreadsIDReactionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :type, -> { Forum::Threads::Types::PostThreadsIDReactionsRequestType }, optional: false, nullable: false
        field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
