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

      
    end
  end
end
