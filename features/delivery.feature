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
#Então validar título 'Digite o código de 6 dígitos que enviamos para '

@Delivery @ReceberPorSMS
Cenario: Valida receber por SMS
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pix
E preencher o numero do celular '11909089890'
Então clicar no botão Receber por SMS

@Delivery @ValidaTituloContinuarPagamento
Cenario: Valida Titulo Continuar o Pagamento
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pagar pelo site
Então validar título 'Acesse pra continuar o pagamento'

@Delivery @ValidaTituloComoCadastrar
Cenario: Valida Titulo Como deseja se cadastrar?
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pagar pelo site
E clicar no botão Cadastrar-se
Então validar título 'Como deseja se cadastrar?'

@Delivery @ValidaUrlFacebook
Cenario: Valida URL Facebook
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pagar pelo site
E clicar no botão Cadastrar-se
E clicar no botão Facebook
#Então validar url "https://www.facebook.com/login"
#Então validar título 'Conecte-se para usar sua conta do Facebook com IFood.'

@Delivery @ValidaUrlGoogle
Cenario: Valida Url Google
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pagar pelo site
E clicar no botão Cadastrar-se
E clicar no botão Google
#Então validar url "https://accounts.google.com/"
#Então validar título 'Fazer login'

@Delivery @EnviarPorEmail
Cenario: Cadastrar - Enviar por Email
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pagar pelo site
E clicar no botão Cadastrar-se
E clicar no botão Email 
E E preencher o email 'marlene_gabrielly_silveira@santosferreira.adv.br'
Então clicar no botão Continuar

@Delivery @ValidaTextoAcessarIfood
Cenario: Valida IFood
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Escolher
Quando clicar no botão Pagar pelo site
E clicar no botão Entrar com IFood
Então validar título 'Acesse com o mesmo usuário que usa no iFood:'

@Delivery @LimparSacola
Cenario: Valida toast alert 'Sua sacola está vazia
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Limpar
Então validar toast alert 'Sua sacola está vazia'

@Delivery @TrocarEndereço
Cenario: Valida texto Onde receber o pedido
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Trocar
Então validar título 'Onde você quer receber o pedido?'

@Delivery @ValidaCupomDisponivel
Cenario: Valida Cupom de desconto
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Aplicar
Então validar título 'Cupom de desconto'

@Delivery @CupomEntregaGratis
Cenario: Valida toast alert Cupom adicionado com sucesso
E clicar no botão Lancamento
Quando clicar em 2 CBK
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Aplicar
E clicar no botão Aplicar entrega grátis
Então validar toast alert 'Cupom adicionado com sucesso.'

@Delivery @CupomEntregaGratisIndisponível
Cenario: Valida toast alert Cupom adicionado com sucesso
E clicar no botão Bk Lovers
Quando clicar em Todo Dia a partir de R$10,90
E seleciona o sanduiche
E seleciona a opção de incrementar
E clicar no botão Adicionar
E clicar no botão Ver sacola
E clicar no botão Aplicar
E clicar no botão Aplicar entrega grátis
Então validar toast alert 'Cupom válido para pedidos acima de R$20.'