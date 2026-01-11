# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class GetTagsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Tags::Types::GetTagsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
