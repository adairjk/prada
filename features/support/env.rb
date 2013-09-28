$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
Dir["#{$PROJECT_ROOT}/lib/sites/*.rb"].each { |file| require file }
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'taza'
require 'watir-webdriver'
require 'watir-webdriver/wait'
require 'watir-webdriver/extensions/alerts'
require 'pry'
require 'pry-nav'

ENV['TAZA_ENV'] ||= 'test'
(ENV['BROWSER'] ||= 'firefox').downcase
(ENV['DRIVER'] ||= 'watir_webdriver').downcase

Watir::always_locate = true