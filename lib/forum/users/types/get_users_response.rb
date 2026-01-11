# frozen_string_literal: true

module Forum
  module Users
    module Types
      class GetUsersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Forum::Users::Types::GetUsersResponseDataItem] }, optional: false, nullable: false
        field :meta, -> { Forum::Users::Types::GetUsersResponseMeta }, optional: false, nullable: false
      end
    end
  end
end
