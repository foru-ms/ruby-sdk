# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class GetSsoIdResponse < Internal::Types::Model
        field :data, -> { Forum::SsOs::Types::GetSsoIdResponseData }, optional: true, nullable: false
      end
    end
  end
end
