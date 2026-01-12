# frozen_string_literal: true

module Forum
  class Client
    # @param base_url [String, nil]
    # @param api_key [String]
    #
    # @return [void]
    def initialize(api_key:, base_url: nil)
      @raw_client = Forum::Internal::Http::RawClient.new(
        base_url: base_url || Forum::Environment::PRODUCTION,
        headers: {
          "User-Agent" => "foru-ms-sdk/0.0.2",
          "X-Fern-Language" => "Ruby",
          "x-api-key" => api_key.to_s
        }
      )
    end

    # @return [Forum::Auth::Client]
    def auth
      @auth ||= Forum::Auth::Client.new(client: @raw_client)
    end

    # @return [Forum::Tags::Client]
    def tags
      @tags ||= Forum::Tags::Client.new(client: @raw_client)
    end

    # @return [Forum::Threads::Client]
    def threads
      @threads ||= Forum::Threads::Client.new(client: @raw_client)
    end

    # @return [Forum::Posts::Client]
    def posts
      @posts ||= Forum::Posts::Client.new(client: @raw_client)
    end

    # @return [Forum::PrivateMessages::Client]
    def private_messages
      @private_messages ||= Forum::PrivateMessages::Client.new(client: @raw_client)
    end

    # @return [Forum::Users::Client]
    def users
      @users ||= Forum::Users::Client.new(client: @raw_client)
    end

    # @return [Forum::Roles::Client]
    def roles
      @roles ||= Forum::Roles::Client.new(client: @raw_client)
    end

    # @return [Forum::Reports::Client]
    def reports
      @reports ||= Forum::Reports::Client.new(client: @raw_client)
    end

    # @return [Forum::Notifications::Client]
    def notifications
      @notifications ||= Forum::Notifications::Client.new(client: @raw_client)
    end

    # @return [Forum::Webhooks::Client]
    def webhooks
      @webhooks ||= Forum::Webhooks::Client.new(client: @raw_client)
    end

    # @return [Forum::Integrations::Client]
    def integrations
      @integrations ||= Forum::Integrations::Client.new(client: @raw_client)
    end

    # @return [Forum::SsOs::Client]
    def ss_os
      @ss_os ||= Forum::SsOs::Client.new(client: @raw_client)
    end
  end
end
