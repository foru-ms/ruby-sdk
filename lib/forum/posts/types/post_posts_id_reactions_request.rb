# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class PostPostsIDReactionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :type, -> { Forum::Posts::Types::PostPostsIDReactionsRequestType }, optional: false, nullable: false
        field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
