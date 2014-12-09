require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Vimeo < OmniAuth::Strategies::OAuth2
      option :name, 'vimeo'

      option :client_options, {
        :token_url => "/oauth/access_token",
        :authorize_url => "/oauth/authorize",
        :site => "https://api.vimeo.com"
      }

      def request_phase
        options[:authorize_params] = {:scope => options[:scope]} if options[:scope]
        super
      end
    end
  end
end
