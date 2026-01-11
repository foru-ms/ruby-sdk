# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesIDRepliesSubIDResponse < Internal::Types::Model
        field :data, -> { Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesSubIDResponseData }, optional: false, nullable: false
      end
    end
  end
end
