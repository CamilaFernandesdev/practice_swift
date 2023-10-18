/**
Regras do saque:

- Cada cliente digitará o valor do seu saldoTotal de sua conta bancária e o valorSaque.
- Um saque só pode ser realizado se o saldoDisponível na conta for igual ou superior ao valor solicitado.
- Se o saldo for suficiente, o valor solicitado deve ser subtraído do saldo disponível, indicando que o saque foi realizado.
- Se o saldo for insuficiente, o saque não deve ser realizado e uma mensagem adequada deve ser exibida.

Entrada
A entrada consiste em dois valores inteiros que representam o total do saldo da conta e o valor do saque.

Saída
Se o saque for realizado com sucesso, exibir a mensagem "Saque realizado com sucesso! Novo saldo: {saldo}", onde {saldo} é o novo saldo disponível na conta.

Se o saque não for possível devido a saldo insuficiente, exibir a mensagem "Saldo insuficiente. Saque nao realizado!"

Examplos:
 se a entrada é:
1000
 200
a saida deve ser:
Saque realizado com sucesso. Novo saldo: 800
*/

import Foundation

func main() {
    // Entrada de dados
    let saldoTotal = Int(readLine()!)!
    let valorSaque = Int(readLine()!)!

    // Verificar se o saldo é suficiente para o saque
    if saldoTotal >= valorSaque {
        let novoSaldo = saldoTotal - valorSaque
        print("Saque realizado com sucesso! Novo saldo: \(novoSaldo)")
    } else {
        print("Saldo insuficiente. Saque nao realizado!")
    }
}

main()
