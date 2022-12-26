require 'litedoge_client/version'
require 'litedoge_client/client'

class LiteDogeClient

  def initialize(options = {})
    @client = LiteDogeClient::Client.new(options)
  end

  # Delegate everything to the 'real' Client
  def method_missing(name, *args)
    @client.send(name, *args)
  end

  def self.configuration
    @configuration ||=  Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

  class Configuration
    attr_accessor :host, :port, :protocol, :user, :password

    def initialize
      self.host = 'localhost'
      self.port = 17014
      self.protocol = :http
      self.user = ''
      self.password = ''
    end

  end

end
