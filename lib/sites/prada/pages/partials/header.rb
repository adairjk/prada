require 'rubygems'
require 'taza/page'

module Prada
  class Header < ::Taza::Page

    element(:header_navigation) { browser.div(:id => "header_nav") }
    element(:months) { header_navigation.lis }
    element(:month_link) { |month| header_navigation.link(:text => month) }

    element(:email_form) { browser.form(:id => "remind_email_form") }
    element(:email) { browser.text_field(:id => "remind_email_input") }
    element(:email_submit) { email_form.button(:type => "submit") }

  end
end