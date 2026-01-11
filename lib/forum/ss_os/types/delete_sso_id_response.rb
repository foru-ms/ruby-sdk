# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class DeleteSsoIdResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
