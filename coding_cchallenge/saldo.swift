import Foundation

func main() {
    let saldoAtual = Double(readLine()!)!
    let valorDeposito = Double(readLine()!)!
    let valorRetirada = Double(readLine()!)!

    // Calcula o saldo atualizado
    let saldoAtualizado = saldoAtual - valorRetirada + valorDeposito

    // Imprime o saldo atualizado com uma casa decimal
    print(String(format: "Saldo atualizado na conta: %.1f", saldoAtualizado))
}

main()
