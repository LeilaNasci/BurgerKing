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
  assert $browser.element(text: 'Burger King - Helio Pelegrino').text.include?(loja)
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
  sleep(2)
  $browser.button(class: 'sc-kDDrLX bsxSTu sc-29a74f8b-7 fuiTEV').click
end

Quando('clicar em Adicionar mais itens') do
  $browser.button(class: 'sc-cf2835ca-4 keUEbP').click
end

Quando('seleciona o acompanhamento desejado') do
  $browser.label(text: 'Batata Média').click
end

Quando('seleciona a bebida de sua preferência') do
  $browser.label(text: 'Pepsi Lata - 350 Ml').click
end

Quando('escolhe se quer acrescentar BK mix') do
  $browser.label(text: 'Bk Mix Brownie').click
end

Quando('seleciona a opção para incrementar o pedido') do
  $browser.label(text: 'Cheeseburger').click
end

Quando('clicar em 2 CBK') do
  sleep(2)
  $browser.element(class: 'sc-bczRLJ sc-f719e9b0-0 iulJrM dbeope').click
end

Quando('clicar no botão Escolher') do
  sleep(2)
  $browser.button(class: 'sc-kDDrLX bJQOCn sc-5a75d9e7-2 fUsreu').click
end

Quando('clicar no botão Lancamento') do
  $browser.button(text: 'Lançamentos').click
end

Quando('clicar no botão Ver sacola') do
  $browser.button(class: 'sc-bf402f79-0 jZPdJK').click
end

Quando('clicar em Shake Oreo Chocolate') do
  $browser.element(text: 'Shake Oreo Chocolate').click
end

Quando('clicar no botão Pix') do
  $browser.button(class: 'sc-kDDrLX duvFmM sc-c046c03-2 beKKlE').click
end

Quando('preencher o numero do celular {string}') do |numero|
  sleep(5)
  $browser.text_field(id: 'phone_number').set numero
end

Então('clicar no botão Receber pelo Whatsapp') do
  $browser.element(text: 'Receber pelo WhatsApp').click
end



