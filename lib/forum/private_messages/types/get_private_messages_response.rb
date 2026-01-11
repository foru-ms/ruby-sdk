# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::PrivateMessages::Types::GetPrivateMessagesResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::PrivateMessages::Types::GetPrivateMessagesResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
