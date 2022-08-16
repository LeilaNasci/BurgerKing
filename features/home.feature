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
Quando clicar no botão "Clique e Retire"
Então validar url "https://burgerking.com.br/app-bk"

