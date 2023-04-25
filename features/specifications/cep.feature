#language: pt

@cep
Funcionalidade: CEP
    validar consulta de CEP

    @get_cep
    Cenário: Validar GET API com o respectivo endereço
        Dado Que desejo obter o endereço de um respectivo "<cep>"
        Quando faço uma requisição GET para obter o endereço
        Então o serviço deve responder com <status_code>
        E retorna detalhes do endereço

        Exemplos:
        | dados       | cep        | status_code |
        | validos     | 05339000   | 200         |
        | invalidos   | 053390000  | 400         |

    @get_cep_end
    Cenário: Validar GET API com o respectivo endereço
        Dado Que desejo obter o endereço de um respectivo "<cep>"
        Quando faço uma requisição GET para obter o endereço
        Então o serviço deve responder com <status_code>
        E retorna detalhes do "<endereco>"

        Exemplos:
        | dados       | cep        | status_code |  endereco                            |
        | validos     | 05339000   | 200         |  Avenida Corifeu de Azevedo Marques  |