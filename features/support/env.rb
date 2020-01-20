$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
Dir["#{$PROJECT_ROOT}/lib/sites/*.rb"].each { |file| require file }
# require 'rubygems'
#require 'bundler/setup'
require 'os'
require 'rspec'
require 'taza'
require 'watir'
# require 'watir-webdriver/wait'
# require 'watir-webdriver/extensions/alerts'
require 'pry'
require 'pry-nav'

ENV['TAZA_ENV'] ||= 'test'
(ENV['BROWSER'] ||= 'chrome').downcase
(ENV['DRIVER'] ||= 'watir').downcase

if OS.mac?
  ENV['PATH'] = File.join($PROJECT_ROOT, 'drivers', 'macos', 'geckodriver') + ':' + ENV['PATH']
end

Watir::always_locate = true