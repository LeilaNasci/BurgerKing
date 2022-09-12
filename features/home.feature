# language: pt

Funcionalidade: Validar pagina home
@ValidaMenu
Esquema do Cenario: Validar menu
Dado estar na home 'https://burgerking.com.br'
Quando clicar no menu "<menu>"
Então validar url "<url>"
E validar titulo "<titulo>"
Exemplos:

            | menu         | url                                    | titulo                          |
            | Cupons       | https://burgerking.com.br/cupons       | Burger King® Brasil - Cupons    |
            | Cardápio     | https://burgerking.com.br/cardapio     | Burger King® Brasil - Cardápios |
            | Restaurantes | https://burgerking.com.br/restaurantes | Burger King® - Restaurantes     |
            | App BK       | https://burgerking.com.br/app-bk       | Burger King®                    |
            | Clube BK     | https://burgerking.com.br/clube-bk     | Burger King®                    |
            | Delivery     | https://delivery.burgerking.com.br     | BK Delivery                     |

@ValidaHome
Cenario: Validar home
Dado estar na home 'https://burgerking.com.br'
Então validar url "https://burgerking.com.br"
E validar titulo 'Burger King®'

@CliqueRetire
Cenario: Validar clique e retire
Dado estar na home 'https://burgerking.com.br'
Quando clicar no botão clique e retire
Então validar url "https://burgerking.com.br/app-bk"

@Delivery @LojaProxima
Cenario: Valida loja próxima
Dado estar no site do delivery 'https://delivery.burgerking.com.br/'
Quando clicar no botão "Digitar meu endereço"
E preencher o endereço "rua bento fernandes - campo limpo"
E seleciona o endereço
E preencher o numero '15'
E clicar no botão usar endereço
Então valida loja 'Burger King - Campo Limpo Shopping'

@Delivery @TituloBusca
Cenario: Valida título buscar endereço
Dado estar no site do delivery 'https://delivery.burgerking.com.br/'
Quando clicar no botão "Digitar meu endereço"
Então validar título 'Buscar endereço'

@Delivery @TextoClubeBK
Cenario: Valida texto Clube BK
Dado estar no site do delivery 'https://delivery.burgerking.com.br/'
Quando clicar no botão "Digitar meu endereço"
E preencher o endereço "rua bento fernandes - campo limpo"
E seleciona o endereço
E preencher o numero '15'
E clicar no botão usar endereço
Quando clicar em ClubeBK
Então validar título 'O Clube Bk é um clube de recompensas gratuito, todinho seu <3'

@Delivery @TextoVerSacola
Cenario: Valida ver sacola
Dado estar no site do delivery 'https://delivery.burgerking.com.br/'
Quando clicar no botão "Digitar meu endereço"
E preencher o endereço "Rua Henrique Brammer Netto"
E seleciona o endereço
E preencher o numero '50'
E clicar no botão usar endereço
Quando clicar em combo CBK
E seleciona o acompanhamento desejado
E seleciona a bebida de sua preferência
E escolhe se quer acrescentar BK mix
E seleciona a opção para incrementar o pedido
Quando clicar no botão Adicionar
Então validar título 'Sacola'

