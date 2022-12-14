Dado('estar no site do delivery {string}') do |url|
  $browser.goto(url) 
end

Quando('clicar no botão digitar meu endereçso') do |btn|
  $browser.button(text: btn).click
end

Quando('preencher o endereço {string}') do |endereco|
  $browser.text_field(id: 'downshift-0-input').set endereco
end

Quando('seleciona o endereço') do
  $browser.li(id: 'downshift-0-item-0').click
end

Quando('preencher o numero {string}') do |numero|
  $browser.text_field(id: 'streetNumber').set numero
end

Quando('clicar no botão usar endereço') do
  $browser.button(text: 'Usar endereço').click
end

Então('valida loja {string}') do |loja|
  assert $browser.element(text: 'Burger King - Campo Limpo Shopping').text.include?(loja)
end

Então('validar título {string}') do |titulo| 
  sleep(5)
  assert $browser.element(text: titulo).text.include?(titulo)
end

Quando('clicar em ClubeBK') do
  sleep(2)
  $browser.element(class: 'sc-bczRLJ sc-f719e9b0-0 sc-de312e94-4 hJJyHP dbeope eyvSCE').click
end

Quando('clicar em combo CBK') do
  sleep(2)
  $browser.element(class: 'sc-77dfba53-0 jMrGpH').click
end

Quando('clicar no botão Adicionar') do
  $browser.button(class: 'sc-kDDrLX bsxSTu sc-29a74f8b-7 fuiTEV').click
end

Quando('clicar em Adicionar mais itens') do
  $browser.button(class: 'sc-cf2835ca-4 keUEbP').click
end

Quando('seleciona o acompanhamento desejado') do
  $browser.element(text: 'Onion rings Média').click
end

Quando('seleciona a bebida de sua preferência') do
  $browser.element(text: 'H2oh Limão - 500 Ml').click
end

Quando('escolhe se quer acrescentar BK mix') do
  $browser.element(text: 'Bk Mix Brownie').click
end

Quando('seleciona a opção para incrementar o pedido') do
  $browser.element(text: 'Bk cheddar').click
end



