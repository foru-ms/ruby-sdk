# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesIDRepliesResponse < Internal::Types::Model
        field :data, -> { Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesResponseData }, optional: false, nullable: false
      end
    end
  end
end
