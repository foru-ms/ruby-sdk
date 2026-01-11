# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class PostPrivateMessagesResponse < Internal::Types::Model
        field :data, -> { Forum::PrivateMessages::Types::PostPrivateMessagesResponseData }, optional: true, nullable: false
      end
    end
  end
end
