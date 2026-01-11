# frozen_string_literal: true

module Forum
  module PrivateMessages
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
      # @return [Forum::PrivateMessages::Types::GetPrivateMessagesResponse]
      def list_all_private_messages(request_options: {}, **params)
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
          path: "private-messages",
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
          Forum::PrivateMessages::Types::GetPrivateMessagesResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::PrivateMessages::Types::PostPrivateMessagesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::PrivateMessages::Types::PostPrivateMessagesResponse]
      def create_a_private_message(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[recipient_id sender_id title body parent_id extended_data]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "private-messages",
          body: Forum::PrivateMessages::Types::PostPrivateMessagesRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::PrivateMessages::Types::PostPrivateMessagesResponse.load(response.body)
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
      # @return [Forum::PrivateMessages::Types::GetPrivateMessagesIDResponse]
      def get_a_private_message(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "private-messages/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::PrivateMessages::Types::GetPrivateMessagesIDResponse.load(response.body)
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
      # @return [Forum::PrivateMessages::Types::DeletePrivateMessagesIDResponse]
      def delete_a_private_message(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "private-messages/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::PrivateMessages::Types::DeletePrivateMessagesIDResponse.load(response.body)
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
      # @option params [String, nil] :cursor
      # @option params [Integer, nil] :limit
      #
      # @return [Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesResponse]
      def list_private_message_replies(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[cursor limit]
        query_params = {}
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        params = params.except(*query_param_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "private-messages/#{params[:id]}/replies",
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
          Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::PrivateMessages::Types::PostPrivateMessagesIDRepliesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::PrivateMessages::Types::PostPrivateMessagesIDRepliesResponse]
      def create_a_reply_in_private_message(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[recipient_id sender_id title body parent_id extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "private-messages/#{params[:id]}/replies",
          body: Forum::PrivateMessages::Types::PostPrivateMessagesIDRepliesRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::PrivateMessages::Types::PostPrivateMessagesIDRepliesResponse.load(response.body)
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
      # @option params [String] :sub_id
      #
      # @return [Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesSubIDResponse]
      def get_a_reply_from_private_message(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "private-messages/#{params[:id]}/replies/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::PrivateMessages::Types::GetPrivateMessagesIDRepliesSubIDResponse.load(response.body)
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
      # @option params [String] :sub_id
      #
      # @return [Forum::PrivateMessages::Types::DeletePrivateMessagesIDRepliesSubIDResponse]
      def delete_a_reply_from_private_message(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "private-messages/#{params[:id]}/replies/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::PrivateMessages::Types::DeletePrivateMessagesIDRepliesSubIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
