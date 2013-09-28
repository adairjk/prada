require 'rubygems'
require 'taza/page'

module Prada
  class Header < ::Taza::Page

    element(:header_navigation) { browser.div(:id => "header_nav")}
    element(:months) { header_navigation.lis}
    element(:month_link) { |month| header_navigation.link(:text => month)}

  end
end