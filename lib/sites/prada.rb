require 'rubygems'
require 'taza'

Dir["#{File.dirname(__FILE__)}/ove/models/*.rb"].each {|f| require f}

module Prada
  include ForwardInitialization

  class Prada < ::Taza::Site

  end
end
