require 'watir'
require '../BurgerKing/Pages/common'
require '../BurgerKing/Base/Locator'
require '../BurgerKing/Assertions/Compare.rb'
include Test::Unit::Assertions

Dado('Usuario esta na homepage') do
  assert_equal('Burger King®', $browser.title)
  assert_equal('https://burgerking.com.br/', $browser.url)
end


Quando('Usuario clica no menu {string}') do |menu|
    Common.clica_link(menu) 
end
  
Então('Valida url da pagina {string}') do |url|
    assert_equal(url, $browser.url)
end