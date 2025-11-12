algoritmo "Simulador de Caixa Eletrônico Aprimorado"

// --- Variáveis Globais ---
// 'saldo' é global para ser acessado e modificado por todos os procedimentos.
// 'opcao' controla o loop principal e o menu.
var
   saldo: real
   opcao: inteiro

// --- Procedimento para limpar a tela e mostrar o menu ---
// (Lê a opção e armazena na variável global 'opcao')
procedimento ExibirMenu()
inicio
   limpatela
   escreva("===================================\n")
   escreva("=       BEM-VINDO AO BANCO       =\n")
   escreva("===================================\n")
   // Exibe o saldo diretamente no menu para facilitar
   escreva("   Saldo Atual: R$ ", saldo:0:2, "\n")
   escreva("===================================\n")
   escreva("1. Consultar Saldo (Detalhado)\n")
   escreva("2. Realizar Depósito\n")
   escreva("3. Realizar Saque\n")
   escreva("4. Sair\n")
   escreva("===================================\n")
   escreva("Escolha uma opção: ")
   leia(opcao)
fimprocedimento

// --- Procedimento para Consultar Saldo ---
procedimento ConsultarSaldo()
inicio
   limpatela
   escreva("--- Consulta de Saldo ---\n")
   escreva("Seu saldo atual é: R$ ", saldo:0:2, "\n")
   // Em um sistema real, aqui poderiam ser exibidos
   // os últimos lançamentos (extrato).
fimprocedimento

// --- Procedimento para Realizar Depósito ---
// (Modifica a variável global 'saldo')
procedimento RealizarDeposito()
var
   valorDeposito: real // Variável local
inicio
   limpatela
   escreva("--- Depósito ---\n")
   escreva("Digite o valor do depósito: R$ ")
   leia(valorDeposito)

   // Validação da entrada
   se valorDeposito <= 0 então
      escreva("\n[ERRO] Valor inválido! O depósito deve ser positivo.\n")
   senão
      saldo <- saldo + valorDeposito
      escreva("\nDepósito de R$ ", valorDeposito:0:2, " realizado com sucesso!\n")
   fimse
   escreva("Saldo atual: R$ ", saldo:0:2, "\n")
fimprocedimento

// --- Procedimento para Realizar Saque ---
// (Modifica a variável global 'saldo')
procedimento RealizarSaque()
var
   valorSaque: real // Variável local
inicio
   limpatela
   escreva("--- Saque ---\n")
   escreva("Saldo disponível: R$ ", saldo:0:2, "\n")
   escreva("Digite o valor do saque: R$ ")
   leia(valorSaque)

   // Validação Múltipla
   se valorSaque <= 0 então
      escreva("\n[ERRO] Valor inválido! O saque deve ser positivo.\n")
   senão se valorSaque > saldo então
      escreva("\n[ERRO] Saldo insuficiente para este saque!\n")
   senão
      saldo <- saldo - valorSaque
      escreva("\nSaque de R$ ", valorSaque:0:2, " realizado com sucesso!\n")
   fimse
   escreva("Saldo atual: R$ ", saldo:0:2, "\n")
fimprocedimento

// --- Procedimento para Pausar a execução ---
procedimento Pausar()
var
   tecla: caractere // Variável local
inicio
   escreva("\n(Pressione [ENTER] para voltar ao menu...)")
   leia(tecla) // Aguarda o usuário pressionar Enter
fimprocedimento

// --- Bloco Principal (Início da Execução) ---
inicio
   // Inicializa o saldo (com um valor inicial para testes)
   saldo <- 1000.00
   opcao <- 0 // Garante que não saia do loop na primeira vez

   // Loop principal do programa
   // Continua enquanto a opção escolhida não for 4 (Sair)
   enquanto (opcao <> 4) faca
      
      ExibirMenu() // Mostra o menu e lê a 'opcao'

      escolha opcao
         caso 1:
            ConsultarSaldo()
            Pausar()
         caso 2:
            RealizarDeposito()
            Pausar()
         caso 3:
            RealizarSaque()
            Pausar()
         caso 4:
            limpatela
            escreva("===================================\n")
            escreva("=    OBRIGADO. VOLTE SEMPRE!      =\n")
            escreva("===================================\n")
         padrão:
            escreva("\n[ERRO] Opção inválida! Tente novamente.\n")
            Pausar()
      fimescolha
      
   fimenquanto
fimalgoritmo
