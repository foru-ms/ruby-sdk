# frozen_string_literal: true

module Forum
  module Types
    class ThreadCreate < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: false
      field :body, -> { String }, optional: false, nullable: false
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
      field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      field :poll, -> { Forum::Types::ThreadCreatePoll }, optional: true, nullable: false
    end
  end
end
