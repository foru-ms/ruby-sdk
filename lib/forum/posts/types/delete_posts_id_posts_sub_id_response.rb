# frozen_string_literal: true

module Forum
  module Posts
    module Types
      class DeletePostsIDPostsSubIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
