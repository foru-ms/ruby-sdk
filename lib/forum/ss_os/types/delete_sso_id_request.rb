# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class DeleteSsoIdRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
