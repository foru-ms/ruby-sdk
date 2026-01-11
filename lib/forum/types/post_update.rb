# frozen_string_literal: true

module Forum
  module Types
    class PostUpdate < Internal::Types::Model
      field :body, -> { String }, optional: true, nullable: false
      field :thread_id, -> { String }, optional: true, nullable: false, api_name: "threadId"
      field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
      field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
    end
  end
end
