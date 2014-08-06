require "hackerdeck/version"
require 'sinatra/base'
require 'slim/logic_less'

module Hackerdeck
  class CLI < Sinatra::Application
    get '/' do
      content = File.read('slides.slim')
      slim(content, :layout=>:layout)
    end

    def self.run
      run!
    end
  end
end
