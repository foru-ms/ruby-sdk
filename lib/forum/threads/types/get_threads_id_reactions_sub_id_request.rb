# frozen_string_literal: true

module Forum
  module Threads
    module Types
      class GetThreadsIDReactionsSubIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :sub_id, -> { String }, optional: false, nullable: false, api_name: "subId"
      end
    end
  end
end
