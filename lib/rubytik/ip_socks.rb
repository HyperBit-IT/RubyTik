# frozen_string_literal: true

module Rubytik
  # IPSocks is a Ruby library for interacting with the Mikrotik RouterOS IP > SOCKS API.
  module IPSocks
    # Add a new SOCKS user to the Mikrotik RouterOS.
    # @param name [String] The name of the new SOCKS user.
    # @param password [String] The password of the new SOCKS user.
    # @return [String] The HTTP status code.
    def self.add_user(name, password)
      url = URI("https://#{Rubytik.host}/rest/ip/socks/users")
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      https.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Put.new(url)
      request.content_type = "application/json"
      request.basic_auth(Rubytik.user, Rubytik.password)
      request.body = JSON.dump({ "name": name, "password": password })
      https.request(request).code
    end
  end
end
