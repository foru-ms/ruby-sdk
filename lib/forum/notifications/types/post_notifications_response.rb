# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class PostNotificationsResponse < Internal::Types::Model
        field :data, -> { Forum::Notifications::Types::PostNotificationsResponseData }, optional: true, nullable: false
      end
    end
  end
end
