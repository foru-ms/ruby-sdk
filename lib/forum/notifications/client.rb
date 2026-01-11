# frozen_string_literal: true

module Forum
  module Notifications
    class Client
      # @param client [Forum::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :search
      #
      # @return [Forum::Notifications::Types::GetNotificationsResponse]
      def list_all_notifications(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[page limit search]
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["search"] = params[:search] if params.key?(:search)
        params.except(*query_param_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "notifications",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Notifications::Types::GetNotificationsResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Notifications::Types::PostNotificationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Notifications::Types::PostNotificationsResponse]
      def create_a_notification(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[user_id notifier_id type description thread_id post_id private_message_id status extended_data]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "notifications",
          body: Forum::Notifications::Types::PostNotificationsRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Notifications::Types::PostNotificationsResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Notifications::Types::GetNotificationsIDResponse]
      def get_a_notification(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "notifications/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Notifications::Types::GetNotificationsIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Notifications::Types::DeleteNotificationsIDResponse]
      def delete_a_notification(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "notifications/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Notifications::Types::DeleteNotificationsIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Notifications::Types::PatchNotificationsIDRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Notifications::Types::PatchNotificationsIDResponse]
      def update_a_notification(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[status extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "notifications/#{params[:id]}",
          body: Forum::Notifications::Types::PatchNotificationsIDRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Notifications::Types::PatchNotificationsIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
