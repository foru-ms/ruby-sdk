# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class PostTagsResponse < Internal::Types::Model
        field :data, -> { Forum::Tags::Types::PostTagsResponseData }, optional: true, nullable: false
      end
    end
  end
end
