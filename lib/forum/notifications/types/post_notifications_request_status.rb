# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      module PostNotificationsRequestStatus
        extend Forum::Internal::Types::Enum

        READ = "read"
        UNREAD = "unread"
        DISMISSED = "dismissed"
        ARCHIVED = "archived"
      end
    end
  end
end
