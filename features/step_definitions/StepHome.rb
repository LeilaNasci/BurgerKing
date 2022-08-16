require 'watir'
require '../BurgerKing/Pages/common'
include Test::Unit::Assertions

Dado('estar na home {string}') do |site|
    $browser.goto(site)
end
  
Quando('clicar no menu {string}') do |menu|
    sleep 3
    if menu.include?('Delivery')
        Common.clica_link_text(menu)
        sleep 2
        Common.abre_segunda_aba()
   else
        Common.clica_link_text(menu)
   end
end
  
Então('validar url {string}') do |url|
    sleep 2
    assert $browser.url.include?(url)
end

Então('validar titulo {string}') do |titulo|
    assert $browser.title.include?(titulo)
end

Quando('clicar no botão {string}') do |button|
    Common.clica_link_text(button)
end