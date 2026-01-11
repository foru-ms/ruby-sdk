# frozen_string_literal: true

module Forum
  module Notifications
    module Types
      class GetNotificationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Notifications::Types::GetNotificationsResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Notifications::Types::GetNotificationsResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
