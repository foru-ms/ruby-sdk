# frozen_string_literal: true

module Forum
  module Threads
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
      # @return [Forum::Threads::Types::GetThreadsResponse]
      def list_all_threads(request_options: {}, **params)
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
          path: "threads",
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
          Forum::Threads::Types::GetThreadsResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Threads::Types::PostThreadsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Threads::Types::PostThreadsResponse]
      def create_a_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[title body user_id tags poll]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "threads",
          body: Forum::Threads::Types::PostThreadsRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::PostThreadsResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDResponse]
      def get_a_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::GetThreadsIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::DeleteThreadsIDResponse]
      def delete_a_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "threads/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::DeleteThreadsIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Threads::Types::PatchThreadsIDRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Threads::Types::PatchThreadsIDResponse]
      def update_a_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[title body locked pinned tags extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "threads/#{params[:id]}",
          body: Forum::Threads::Types::PatchThreadsIDRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::PatchThreadsIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDPostsResponse]
      def list_thread_posts(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[cursor limit]
        query_params = {}
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        params = params.except(*query_param_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/posts",
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
          Forum::Threads::Types::GetThreadsIDPostsResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDPostsSubIDResponse]
      def get_a_post_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/posts/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::GetThreadsIDPostsSubIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::DeleteThreadsIDPostsSubIDResponse]
      def delete_a_post_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "threads/#{params[:id]}/posts/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::DeleteThreadsIDPostsSubIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDReactionsResponse]
      def list_thread_reactions(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[cursor limit]
        query_params = {}
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        params = params.except(*query_param_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/reactions",
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
          Forum::Threads::Types::GetThreadsIDReactionsResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Threads::Types::PostThreadsIDReactionsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Threads::Types::PostThreadsIDReactionsResponse]
      def create_a_reaction_in_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[type user_id extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "threads/#{params[:id]}/reactions",
          body: Forum::Threads::Types::PostThreadsIDReactionsRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::PostThreadsIDReactionsResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes the authenticated user's reaction. No subId needed.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Threads::Types::DeleteThreadsIDReactionsResponse]
      def remove_your_reaction_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "threads/#{params[:id]}/reactions",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::DeleteThreadsIDReactionsResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDReactionsSubIDResponse]
      def get_a_reaction_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/reactions/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::GetThreadsIDReactionsSubIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::DeleteThreadsIDReactionsSubIDResponse]
      def delete_a_reaction_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "threads/#{params[:id]}/reactions/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::DeleteThreadsIDReactionsSubIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDSubscribersResponse]
      def list_thread_subscribers(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[cursor limit]
        query_params = {}
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        params = params.except(*query_param_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/subscribers",
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
          Forum::Threads::Types::GetThreadsIDSubscribersResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDSubscribersSubIDResponse]
      def get_a_subscriber_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/subscribers/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::GetThreadsIDSubscribersSubIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::DeleteThreadsIDSubscribersSubIDResponse]
      def delete_a_subscriber_from_thread(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "threads/#{params[:id]}/subscribers/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::DeleteThreadsIDSubscribersSubIDResponse.load(response.body)
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
      # @return [Forum::Threads::Types::GetThreadsIDPollResponse]
      def get_thread_poll(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "threads/#{params[:id]}/poll",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::GetThreadsIDPollResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Threads::Types::PostThreadsIDPollRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Threads::Types::PostThreadsIDPollResponse]
      def create_thread_poll(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[title options expires_at extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "threads/#{params[:id]}/poll",
          body: Forum::Threads::Types::PostThreadsIDPollRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::PostThreadsIDPollResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Threads::Types::PatchThreadsIDPollRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Threads::Types::PatchThreadsIDPollResponse]
      def update_thread_poll(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[title closed expires_at extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "threads/#{params[:id]}/poll",
          body: Forum::Threads::Types::PatchThreadsIDPollRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Threads::Types::PatchThreadsIDPollResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
