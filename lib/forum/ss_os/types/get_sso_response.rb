# frozen_string_literal: true

module Forum
  module SsOs
    module Types
      class GetSSOResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::SsOs::Types::GetSSOResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::SsOs::Types::GetSSOResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
