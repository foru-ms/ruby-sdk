# frozen_string_literal: true

module Forum
  module Tags
    module Types
      class DeleteTagsIDSubscribersSubIDRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
        field :sub_id, -> { String }, optional: false, nullable: false, api_name: "subId"
      end
    end
  end
end
