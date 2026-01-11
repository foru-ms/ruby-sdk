# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class PatchNotificationsIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :status, -> { Forum::Notifications::Types::PatchNotificationsIDRequestStatus }, optional: true, nullable: false
        field :extended_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extendedData"
      end
    end
  end
end
