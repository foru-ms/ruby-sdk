# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesIDResponse < Internal::Types::Model
        field :data, -> { Forum::PrivateMessages::Types::GetPrivateMessagesIDResponseData }, optional: true, nullable: false
      end
    end
  end
end
