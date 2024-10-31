algoritmo "Simulador de Caixa Eletrônico"
variáveis
    saldo, valor : real
    opcao : inteiro
início
    // Inicializa o saldo
    saldo ← 0

    // Exibe o menu de opções
    enquanto verdadeiro faça
        escreva("\n=== Caixa Eletrônico ===\n")
        escreva("1. Consulta de Saldo\n")
        escreva("2. Depósito\n")
        escreva("3. Saque\n")
        escreva("4. Sair\n")
        escreva("Escolha uma opção: ")
        leia(opcao)

        // Verifica a opção escolhida
        escolha opcao
            caso 1:
                escreva("Seu saldo atual é: R$ ", saldo:0:2)
            caso 2:
                escreva("Digite o valor do depósito: R$ ")
                leia(valor)
                se valor <= 0 então
                    escreva("Valor inválido para depósito!")
                senão
                    saldo ← saldo + valor
                    escreva("Depósito realizado com sucesso! Saldo atual: R$ ", saldo:0:2)
                fimse
            caso 3:
                escreva("Digite o valor do saque: R$ ")
                leia(valor)
                se valor <= 0 então
                    escreva("Valor inválido para saque!")
                senão se valor > saldo então
                    escreva("Saldo insuficiente para saque!")
                senão
                    saldo ← saldo - valor
                    escreva("Saque realizado com sucesso! Saldo atual: R$ ", saldo:0:2)
                fimse
            caso 4:
                escreva("Saindo do sistema...")
                pare
            padrão:
                escreva("Opção inválida! Tente novamente.")
        fimescolha
    fimenquanto
fimenquanto
