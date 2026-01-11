# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class PatchSsoIdResponse < Internal::Types::Model
        field :data, -> { Forum::SsOs::Types::PatchSsoIdResponseData }, optional: true, nullable: false
      end
    end
  end
end
