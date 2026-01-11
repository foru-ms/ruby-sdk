# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class PostPrivateMessagesIDRepliesResponse < Internal::Types::Model
        field :data, -> { Forum::PrivateMessages::Types::PostPrivateMessagesIDRepliesResponseData }, optional: false, nullable: false
      end
    end
  end
end
