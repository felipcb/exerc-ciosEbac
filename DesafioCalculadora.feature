            #language: pt

            Funcionalidade: Calculadora
            Usar a calculadora do sistema
            Para somar dois números

            Esquema do Cenário: Soma de 2 números
            console.log("calculadora")
            Dado que eu acesse a calculadora no sistema
            Quando eu somar <numero1> com <numero2>
            Então o programa mostra o <resultado>

            Exemplos:
            | numero1 | numero2 | resultado |
            | 1       | 2       | 3         |
            | 10      | 90      | 100       |
            | -3      | -18     | -21       |
            | -100    | 4500    | 4400      |