# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::GetPostsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
