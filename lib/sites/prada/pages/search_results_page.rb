require 'rubygems'
require 'taza/page'

module Prada
  class SearchResultsPage < ::Taza::Page

    element(:shoe_list) { browser.ul(:id => "shoe_list")}
    element(:shoe_rows) { shoe_list.lis}
    element(:shoes_pricing) { shoe_list.tds(:class => "shoe_result_value shoe_price")}
    element(:month_link) { |month| header_navigation.link(:text => month)}

  end
end