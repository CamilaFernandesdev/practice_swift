/**
Entrada

O programa deve solicitar ao usuário as informações necessárias para abrir uma conta poupança. A entrada deve ser feita via console (linha de comando) e deve incluir o número da conta (um valor inteiro), o nome do titular (uma sequência de caracteres), o saldo inicial da conta (um valor decimal) e a taxa de juros da conta poupança (um valor decimal).
Saída

Após receber as informações da conta poupança, o programa deve criar um objeto do tipo "ContaPoupanca" e exibir na tela as informações dessa conta, incluindo o número da conta, o nome do titular, o saldo atual e a taxa de juros. A saída deve ser formatada de forma clara e legível para o usuário.
Exemplos
entrada: Joao
123456
1000.0
1.5

como deve ser a saida: Conta Poupanca:
Joao
123456
Saldo: R$ 1000.0
Taxa de juros: 1.5%
*/
import Foundation

class ContaBancaria {
    var nomeTitular: String
    var numeroConta: Int
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func exibirInformacoes() {
        print("\(nomeTitular)")
        print("\(numeroConta)")
        print("Saldo: R$ \(String(format: "%.1f", saldo))")
    }
}

class ContaPoupanca: ContaBancaria {
    var taxaJuros: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double, taxaJuros: Double) {
        self.taxaJuros = taxaJuros
        super.init(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo)
    }

    override func exibirInformacoes() {
        super.exibirInformacoes()
        print("Taxa de juros: \(String(format: "%.1f", taxaJuros))%")
    }
}

func main() {
    guard let nomeTitular = readLine() else { return }
    guard let numeroConta = Int(readLine()!) else { return }
    guard let saldo = Double(readLine()!) else { return }
    guard let taxaJuros = Double(readLine()!) else { return }

    let contaPoupanca = ContaPoupanca(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo, taxaJuros: taxaJuros)

    print("Conta Poupanca:")
    contaPoupanca.exibirInformacoes()
}

main()
