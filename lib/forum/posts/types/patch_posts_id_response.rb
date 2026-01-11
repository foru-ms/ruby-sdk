# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class PatchPostsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Posts::Types::PatchPostsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
