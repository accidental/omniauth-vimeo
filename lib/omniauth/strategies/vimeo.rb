require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vimeo < OmniAuth::Strategies::OAuth2
      option :name, 'vimeo'

      option :client_options, {
        :token_url => "/oauth/access_token",
        :authorize_url => "/oauth/authorize",
        :site => "https://api.vimeo.com"
      }
      
      credentials do
        hash = {'token' => access_token.token}
        hash.merge!('refresh_token' => access_token.refresh_token) if access_token.expires? && access_token.refresh_token
        hash.merge!('expires_at' => access_token.expires_at) if access_token.expires?
        hash.merge!('expires' => access_token.expires?)
      end
      
      extra do 
        { 'scope' => access_token.params['scope'] }
      end
      
      info do
        {
          'id' => access_token.params['user']['uri'].split('/').last.to_i,
          'nickname' => access_token.params['user']['link'].split('/').last,
          'name' => access_token.params['user']['name'],
          'account' => access_token.params['user']['account'],
          'location' => access_token.params['user']['location'],
          'image' => access_token.params['user']['pictures'].last['link'],
          'vimeo_url' => access_token.params['user']['link']
        }
      end
      
      uid { info['id'] }
      
    end
  end
end
