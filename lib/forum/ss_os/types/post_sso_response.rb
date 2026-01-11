# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class PostSSOResponse < Internal::Types::Model
        field :data, -> { Forum::SsOs::Types::PostSSOResponseData }, optional: true, nullable: false
      end
    end
  end
end
