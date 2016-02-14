require 'tracky/version'
require 'tracky/configuration'
require 'tracky/base_api'
require 'tracky/group'
require 'tracky/comment'
require 'json'
require 'http'

module Tracky
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end
end
