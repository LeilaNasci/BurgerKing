require 'watir'
require 'test/unit'
include Test::Unit::Assertions

$browser = Watir::Browser.new :chrome
$browser.window.maximize

