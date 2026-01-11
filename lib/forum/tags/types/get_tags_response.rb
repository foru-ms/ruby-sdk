# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class GetTagsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Tags::Types::GetTagsResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Tags::Types::GetTagsResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
