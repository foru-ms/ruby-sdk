# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class GetNotificationsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
