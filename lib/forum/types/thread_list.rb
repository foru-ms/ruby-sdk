# frozen_string_literal: true

module Forum
  module Types
    class ThreadList < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false
      field :cursor, -> { String }, optional: true, nullable: false
      field :search, -> { String }, optional: true, nullable: false
      field :tag_id, -> { String }, optional: true, nullable: false, api_name: "tagId"
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
      field :sort, -> { Forum::Types::ThreadListSort }, optional: true, nullable: false
    end
  end
end
