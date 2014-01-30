require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vitae < OmniAuth::Strategies::OAuth2
      option :connection_modifier, lambda { |c| }

      option :client_options, {
        :site => 'https://chroniclevitae.com',
        :authorize_url => 'https://chroniclevitae.com/oauth/authorize',
        :token_url => 'https://chroniclevitae.com/oauth/token'
      }

      uid { raw_info.fetch 'id' }

      info do
        {
          :email => raw_info['email'],
          :first_name => raw_info['first_name'],
          :last_name => raw_info['last_name']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= begin
          modify_connection
          access_token.get('/api/users/self', headers: { 'Accept' => 'application/json' })
            .parsed.fetch('results').first
        end
      end

      # Allow users to directly modify the HTTP connection prior to use.
      def modify_connection
        access_token.options[:mode] = :query
        conn = access_token.client.connection
        options.connection_modifier.call(conn)
      end

    end
  end
end
