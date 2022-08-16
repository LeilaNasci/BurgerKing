require 'watir'
require '../BurgerKing/Pages/common'
include Test::Unit::Assertions



Quando('Usuario clica no menu cupom') do
  # assert_equal('Burger King®', $browser.title)
  # assert_equal('https://burgerking.com.br/', $browser.url)
  Common.clica_link(:xpath => "//a[@title='Cupons']") 
end

Quando('Usuario clica no menu {string}') do |menu|
  Common.clica_link(menu) 
end

Então('Valida titulo da pagina') do
  sleep 10
  assert_equal('https://burgerking.com.br/cupons', $browser.url) 
  # Compare.verify_equal('https://burgerking.com.br/', $browser.url)
end

Quando('clicar no clique e retire') do
  button1 = $browser.button(:xpath => '//button[text()="Clique e Retire"]')
  $browser.scroll.to button1
  sleep 2
  Common.clica_button(:xpath => '//button[text()="Clique e Retire"]')
end

Então('Valida titulo da pagina {string}') do |url|
  assert_equal(url, $browser.title)
end