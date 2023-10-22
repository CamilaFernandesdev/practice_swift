/**
Entrada

O programa deve solicitar ao usuário as informações necessárias para abrir uma conta bancária. 
A entrada deve ser feita via console (linha de comando) e deve incluir o número da conta (um valor inteiro), 
o nome do titular (uma sequência de caracteres) e o saldo inicial da conta (um valor decimal).
Saída

Após receber as informações da conta, o programa deve criar um objeto do tipo "ContaBancaria" e 
exibir na tela as informações dessa conta, incluindo o número da conta, o nome do titular e o saldo atual. 
A saída deve ser formatada de forma clara e legível para o usuário.
Exemplos
de entrada : 010101
Caio Carlos
98.0
sa[ida esperada: Informacoes:
Conta: 101010
Titular: Caio Carlos
Saldo: R$ 98.0
*/

import Foundation

class ContaBancaria {
    var numeroConta: Int
    var nomeTitular: String
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func imprimirInformacoes() {
        print("Informacoes:")
        print("Conta: \(numeroConta)")
        print("Titular: \(nomeTitular)")
        print("Saldo: R$ \(saldo)")
    }
}

if let numeroConta = Int(readLine() ?? ""),
   let nomeTitular = readLine(),
   let saldo = Double(readLine() ?? "") {

   // Criar uma instância de "ContaBancaria" com os valores de entrada.
    let conta = ContaBancaria(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo)

    // Imprimir as informações da conta usando o objeto criado acima.
    conta.imprimirInformacoes()
}

