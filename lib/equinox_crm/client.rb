require 'faraday'
require 'json'
require 'active_support'
require 'active_support/core_ext'

module EquinoxCrm
  class Client
    include CrmContact
    attr_reader :oauth_token

    def initialize(oauth_token = nil)
      @oauth_token = oauth_token
    end

    def contacts(id)
      find(id)
    end

    def contacts_list(options = nil)
      all(options)
    end

    private

      def client
        @_client ||= Faraday.new(API_URL) do |client|
          client.request :url_encoded
          client.adapter Faraday.default_adapter
          client.headers['Authorization'] = "token #{oauth_token}" if oauth_token.present?
        end
      end

      def request(http_method:, endpoint:, params: {})
        response = client.public_send(http_method, endpoint, params)
        JSON.parse(response.body)
      end

  end
end