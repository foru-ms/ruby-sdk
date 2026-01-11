# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class GetTagsIDSubscribersResponse < Internal::Types::Model
        field :data, -> { Forum::Tags::Types::GetTagsIDSubscribersResponseData }, optional: false, nullable: false
      end
    end
  end
end
