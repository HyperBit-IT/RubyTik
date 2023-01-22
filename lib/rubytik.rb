# frozen_string_literal: true

require_relative "rubytik/version"
require "rubytik/ip_socks"

# Main module
module Rubytik
  include Rubytik::IPSocks
  require "net/http"
  require "uri"
  require "json"
  require "base64"

  class Error < StandardError; end
  class << self
    attr_accessor :host, :port, :user, :password
  end
end
