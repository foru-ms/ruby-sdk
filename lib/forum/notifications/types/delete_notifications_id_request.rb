# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class DeleteNotificationsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
