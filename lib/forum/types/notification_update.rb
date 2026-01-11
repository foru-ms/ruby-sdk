# frozen_string_literal: true

module Forum
  module Types
    class NotificationUpdate < Internal::Types::Model
      field :status, -> { Forum::Types::NotificationUpdateStatus }, optional: true, nullable: false
      field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
    end
  end
end
