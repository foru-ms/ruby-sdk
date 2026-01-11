# frozen_string_literal: true

module Forum
  module Types
    class NotificationList < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false
      field :cursor, -> { String }, optional: true, nullable: false
      field :status, -> { Forum::Types::NotificationListStatus }, optional: true, nullable: false
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"
    end
  end
end
