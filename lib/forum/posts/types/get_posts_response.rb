# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Posts::Types::GetPostsResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Posts::Types::GetPostsResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
