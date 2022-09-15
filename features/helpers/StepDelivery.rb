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
  $browser.text_field(id: 'phone_number').set numero
end

Então('clicar no botão Receber pelo Whatsapp') do
  $browser.element(text: 'Receber pelo WhatsApp').click
end

Então('clicar no botão Receber por SMS') do
  $browser.element(text: 'Receber por SMS').click
end

Quando('clicar no botão Pagar pelo site') do
  $browser.button(xpath: '//div[1]/div[3]/div/button[2]').click
end

Quando('clicar no botão Cadastrar-se') do
  $browser.button(class: 'sc-kDDrLX bsxSTu sc-41a2afb6-4 fWPFzY').click
end

Quando('clicar no botão Facebook') do
  $browser.button(class: 'sc-e02089f7-4 sc-e02089f7-6 jWeUlC cpUytt').click
end

Quando('clicar no botão Google') do
  sleep(2)
  $browser.button(class: 'sc-e02089f7-4 sc-e02089f7-5 jWeUlC elVzO').click
end

Quando('clicar no botão Email') do
  $browser.button(class: 'sc-kDDrLX eJhRuI sc-e02089f7-3 jbzlew').click
end

Quando('E preencher o email {string}') do |email|
  $browser.text_field(id: 'email').set email
end

Então('clicar no botão Continuar') do
  $browser.button(text: 'Continuar').click
end

Quando('clicar no botão Entrar com IFood') do
  $browser.button(class: 'sc-kDDrLX eJhRuI sc-41a2afb6-5 bFPxuU').click
end

Quando('clicar no botão Limpar') do
  $browser.button(class: 'sc-kDDrLX bJQOCn sc-cf2835ca-9 iakMEW').click
end

Então('validar toast alert {string}') do |string|
  sleep(5)
  assert $browser.element(text: string).text.include?(string)
end

Quando('clicar no botão Trocar') do
  $browser.element(class: 'sc-bjUoiL jNWqbK sc-ecbf8c8a-0 sc-bbf0dca1-0 sc-2e0345ac-3 mULYS gjoDPY frdAyc').click
end

Quando('clicar no botão Aplicar') do
  $browser.element(class: 'sc-duzrYq kOylQJ').click
end

Quando('clicar no botão Aplicar entrega grátis') do
  $browser.element(class: 'sc-kDDrLX bJQOCn sc-d1e652cf-6 cCYigW').click
end

Quando('clicar no botão Bk Lovers') do
  $browser.button(text: 'Bk Lovers').click
end

Quando('clicar em Todo Dia a partir de R$10,90') do
  sleep(2)
  $browser.element(xpath: '//div[9]/div/div[2]/button[2]').click
end

Quando('seleciona o sanduiche') do
  $browser.label(text: 'Chicken Duplo').click
end

Quando('seleciona a opção de incrementar') do
  $browser.label(text: 'Hoje não!').click
end
