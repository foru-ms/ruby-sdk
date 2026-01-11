# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class DeleteNotificationsIDResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
