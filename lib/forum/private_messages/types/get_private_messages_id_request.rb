# frozen_string_literal: true

module Forum
  module PrivateMessages
    module Types
      class GetPrivateMessagesIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
