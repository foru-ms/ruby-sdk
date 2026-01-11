# frozen_string_literal: true

module Forum
  module Types
    class PostList < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false
      field :cursor, -> { String }, optional: true, nullable: false
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
      field :sort, -> { Forum::Types::PostListSort }, optional: true, nullable: false
      field :search, -> { String }, optional: true, nullable: false
      field :type, -> { Forum::Types::PostListType }, optional: true, nullable: false
    end
  end
end
