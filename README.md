# 🏧 Simulador de Caixa Eletrônico (ATM) em Portugol

Este é um projeto de console simples, escrito em Portugol, que simula as operações básicas de um Caixa Eletrônico (ATM).

## 📖 Descrição

O algoritmo foi desenvolvido para fins educacionais, demonstrando conceitos fundamentais de programação estruturada. O programa apresenta um menu interativo onde o usuário pode gerenciar uma conta bancária fictícia.

Este projeto demonstra:
* Loops (`enquanto`)
* Condicionais (`se`, `senao`, `escolha`)
* **Modularização** (uso de `procedimentos`)
* Variáveis locais e globais
* Entrada e Saída de dados (`leia`, `escreva`)
* Limpeza de tela (`limpatela`) para uma melhor UX.

## ✨ Funcionalidades (Features)

* **Consulta de Saldo:** Exibe o saldo atual da conta.
* **Depósito:** Permite ao usuário adicionar fundos à conta. Inclui validação para não aceitar valores negativos ou nulos.
* **Saque:** Permite ao usuário retirar fundos da conta. Inclui validação dupla:
    1.  Não permite saques de valores negativos ou nulos.
    2.  Não permite saques se o valor for maior que o saldo disponível.
* **Menu Interativo:** O programa roda em loop, exibindo o menu principal (incluindo o saldo atual) após cada operação, até que o usuário escolha a opção "Sair".
* **Interface Limpa:** Utiliza `limpatela` e pausas (`Pausar`) para melhorar a experiência do usuário, tornando a navegação clara e evitando que mensagens desapareçam antes de serem lidas.

## 🚀 Como Executar

Para executar este algoritmo, você precisará de um interpretador de Portugol.

1.  **VisualG (Recomendado):**
    * Baixe e instale o [VisualG](http://visualg.com.br/cli/).
    * Copie o código-fonte e salve-o como um arquivo `.alg`.
    * Abra o arquivo no VisualG.
    * Pressione **F9** (ou clique em "Rodar") para executar o programa.

2.  **Portugol Studio (Pode exigir pequenas adaptações):**
    * Baixe e instale o [Portugol Studio](https://github.com/UNIVALI-LITE/Portugol-Studio/releases).
    * Crie um novo arquivo e cole o código.
    * *Nota: Pode ser necessário ajustar a sintaxe de declaração de variáveis se estiver usando o modo "Portugol Studio" estrito.*

## 🏛️ Estrutura do Código

O código-fonte está estruturado em procedimentos para facilitar a leitura e manutenção:

* `ExibirMenu()`: Limpa a tela e mostra as opções.
* `ConsultarSaldo()`: Mostra o saldo.
* `RealizarDeposito()`: Gerencia a lógica de depósito.
* `RealizarSaque()`: Gerencia a lógica de saque.
* `Pausar()`: Aguarda o usuário pressionar [ENTER] para continuar.
* **Bloco Principal (`inicio`...`fimalgoritmo`):** Controla o fluxo principal do programa e o loop do menu.
