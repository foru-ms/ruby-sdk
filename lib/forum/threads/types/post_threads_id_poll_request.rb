# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class PostThreadsIDPollRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :title, -> { String }, optional: false, nullable: false
        field :options, -> { Internal::Types::Array[Forum::Threads::Types::PostThreadsIDPollRequestOptionsItem] }, optional: false, nullable: false
        field :expires_at, -> { String }, optional: true, nullable: false, api_name: "expiresAt"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
