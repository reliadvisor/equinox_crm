require 'faraday'
require 'json'

API_URL = "http://203.193.173.114:4000/api/public_access/contacts"

module CrmContact

  def find(id)
    response = request(
      http_method: :get,
      endpoint: "#{API_URL}/#{id}"
    )
    response
  end

  def all(options)
    limit = options && options[:limit]
    page = options && options[:page]
    response = request(
      http_method: :get,
      endpoint: "#{API_URL}?limit=#{limit}&page=#{page}"
    )
    response
  end

end
