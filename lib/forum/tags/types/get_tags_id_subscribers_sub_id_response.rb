# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class GetTagsIDSubscribersSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::Tags::Types::GetTagsIDSubscribersSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
