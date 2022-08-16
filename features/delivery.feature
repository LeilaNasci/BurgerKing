# # language: pt

# Funcionalidade: Acessar menu delivery
# @delivery
#     Cenário: Validar titulo da pagina
#         Dado Usuario esta na homepage
#         Quando Usuario clica no menu ':xpath => "//a[@title='Delivery']"'
#         Então Valida url da pagina 'https://delivery.burgerking.com.br/80543e96-830c-403f-991e-6eda21bb6bf4/catalog'
#         E Valida titulo da pagina 'BK Delivery'
