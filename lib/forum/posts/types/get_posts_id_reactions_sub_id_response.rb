# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class GetPostsIDReactionsSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::GetPostsIDReactionsSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
