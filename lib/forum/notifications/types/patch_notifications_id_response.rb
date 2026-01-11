# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class PatchNotificationsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Notifications::Types::PatchNotificationsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
