# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class DeletePrivateMessagesIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
