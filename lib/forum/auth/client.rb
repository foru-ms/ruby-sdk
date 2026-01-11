# frozen_string_literal: true

module Forum
  module Auth
    class Client
      # @param client [Forum::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Forum::Auth::Types::PostAuthRegisterRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Auth::Types::PostAuthRegisterResponse]
      def register(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[username email display_name password roles bio extended_data]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "auth/register",
          body: Forum::Auth::Types::PostAuthRegisterRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Auth::Types::PostAuthRegisterResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Auth::Types::PostAuthLoginRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Auth::Types::PostAuthLoginResponse]
      def login(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[login password]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "auth/login",
          body: Forum::Auth::Types::PostAuthLoginRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Auth::Types::PostAuthLoginResponse.load(response.body)
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
      #
      # @return [Forum::Auth::Types::GetAuthMeResponse]
      def get_current_user(request_options: {}, **params)
        Forum::Internal::Types::Utils.normalize_keys(params)
        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "auth/me",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Auth::Types::GetAuthMeResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Auth::Types::PostAuthForgotPasswordRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Auth::Types::PostAuthForgotPasswordResponse]
      def request_password_reset(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[email]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "auth/forgot-password",
          body: Forum::Auth::Types::PostAuthForgotPasswordRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Auth::Types::PostAuthForgotPasswordResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Forum::Auth::Types::PostAuthResetPasswordRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Forum::Auth::Types::PostAuthResetPasswordResponse]
      def reset_password(request_options: {}, **params)
        params = Forum::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[password old_password email token]
        body_bag = params.slice(*body_prop_names)

        request = Forum::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "auth/reset-password",
          body: Forum::Auth::Types::PostAuthResetPasswordRequest.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Forum::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Forum::Auth::Types::PostAuthResetPasswordResponse.load(response.body)
        else
          error_class = Forum::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
