# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class PatchTagsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Tags::Types::PatchTagsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
