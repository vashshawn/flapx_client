require 'flapx_client/version'
require 'flapx_client/client'

class FlapxClient

  def initialize(options = {})
    @client = FlapxClient::Client.new(options)
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
      self.port = 60142
      self.protocol = :http
      self.user = ''
      self.password = ''
    end

  end

end
