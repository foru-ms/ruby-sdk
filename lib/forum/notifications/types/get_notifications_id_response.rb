# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class GetNotificationsIDResponse < Internal::Types::Model
        field :data, -> { Forum::Notifications::Types::GetNotificationsIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
