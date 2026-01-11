# frozen_string_literal: true

module Forum
  module Tags
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
      # @return [Forum::Tags::Types::GetTagsResponse]
      def list_all_tags(request_options: {}, **params)
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
          path: "tags",
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
          Forum::Tags::Types::GetTagsResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Tags::Types::PostTagsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Tags::Types::PostTagsResponse]
      def create_a_tag(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[name slug description color extended_data]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "tags",
          body: Forum::Tags::Types::PostTagsRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Tags::Types::PostTagsResponse.load(response.body)
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
      # @return [Forum::Tags::Types::GetTagsIDResponse]
      def get_a_tag(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "tags/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Tags::Types::GetTagsIDResponse.load(response.body)
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
      # @return [Forum::Tags::Types::DeleteTagsIDResponse]
      def delete_a_tag(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "tags/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Tags::Types::DeleteTagsIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Tags::Types::PatchTagsIDRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Forum::Tags::Types::PatchTagsIDResponse]
      def update_a_tag(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[name slug description color extended_data]
        body_bag = body_params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "tags/#{params[:id]}",
          body: Forum::Tags::Types::PatchTagsIDRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Tags::Types::PatchTagsIDResponse.load(response.body)
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
      # @return [Forum::Tags::Types::GetTagsIDSubscribersResponse]
      def list_tag_subscribers(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[cursor limit]
        query_params = {}
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        params = params.except(*query_param_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "tags/#{params[:id]}/subscribers",
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
          Forum::Tags::Types::GetTagsIDSubscribersResponse.load(response.body)
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
      # @return [Forum::Tags::Types::GetTagsIDSubscribersSubIDResponse]
      def get_a_subscriber_from_tag(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "tags/#{params[:id]}/subscribers/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Tags::Types::GetTagsIDSubscribersSubIDResponse.load(response.body)
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
      # @return [Forum::Tags::Types::DeleteTagsIDSubscribersSubIDResponse]
      def delete_a_subscriber_from_tag(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "tags/#{params[:id]}/subscribers/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Tags::Types::DeleteTagsIDSubscribersSubIDResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
