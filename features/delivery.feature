# language: pt

Funcionalidade: Delivery

Contexto:
Dado estar no site do delivery 'https://delivery.burgerking.com.br/'
Quando clicar no botão "Digitar meu endereço"
E preencher o endereço "Praça Nicolau Aranha Pacheco"
E seleciona o endereço
E preencher o numero '100'
E clicar no botão usar endereço

@Delivery @LojaProxima
Cenario: Valida loja próxima
Então valida loja 'Burger King - Interlagos'

@Delivery @TextoClubeBK
Cenario: Valida texto Clube BK
Quando clicar em ClubeBK
Então validar título 'O Clube Bk é um clube de recompensas gratuito, todinho seu <3'

@Delivery @TextoVerSacola
Cenario: Valida ver sacola
Quando clicar em combo CBK
E seleciona o acompanhamento desejado
E seleciona a bebida de sua preferência
E escolhe se quer acrescentar BK mix
E seleciona a opção para incrementar o pedido
Quando clicar no botão Adicionar
Então validar título 'Sacola'

@Delivery @TextoComoPagar
Cenario: Valida título como pagar
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Então validar título 'Como quer pagar?'

@Delivery @ReceberPeloWhatsapp
Cenario: Valida receber pelo whatsapp
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pix
E preencher o numero do celular '11909089890'
Então clicar no botão Receber pelo Whatsapp
Então validar título 'Digite o código de 6 dígitos que enviamos para '
