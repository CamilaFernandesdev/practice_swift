/**
Entrada
O programa deve utilizar o Scanner para receber o valor de depósito digitado pelo cliente. 
Os valor pode ser decimal, representando valor em reais.

Saída
O programa deve exibir uma mensagem de sucesso quando um valor de depósito válido for informado e o
saldo da conta for atualizado. Se o valor for "0", deverá imprimir uma mensagem encerrando o programa. 
Caso um valor inválido seja digitado, o programa deve exibir uma mensagem de erro solicitando um novo 
valor.

Exemplos
entrada:
500.50
-100
0
a saíde deve ser:
Deposito realizado com sucesso!
Saldo atual: R$ 500.50
Valor invalido! Digite um valor maior que zero.
Encerrando o programa...
*/

import Foundation

func main() {
    var saldo: Double = 0.0
    
    while let input = readLine(), let valor = Double(input) {
        if valor > 0 {
            saldo += valor
            let formattedSaldo = String(format: "R$ %.2f", saldo)
            print("Deposito realizado com sucesso!")
            print("Saldo atual: \(formattedSaldo)")
        } else if valor == 0 {
            print("Encerrando o programa...")
            break
        } else {
            print("Valor invalido! Digite um valor maior que zero.")
        }
    }
}

main()
