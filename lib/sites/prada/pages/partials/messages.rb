require 'rubygems'
require 'taza/page'

module Prada
  class Messages < ::Taza::Page

    element(:submit_message) { browser.div(:id => "flash") }
    element(:success_message) { |message| browser.div(:text => message) }

  end
end