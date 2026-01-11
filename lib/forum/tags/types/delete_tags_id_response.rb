# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class DeleteTagsIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
