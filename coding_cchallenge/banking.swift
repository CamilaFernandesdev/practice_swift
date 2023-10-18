/**
resolva esse desafio em swift.

Entrada
A primeira entrada consiste em um número inteiro que representa a  quantidade de ativos que o usuário possui. Em seguida, o usuário deverá  informar, em linhas separadas, os tipos (strings) dos respectivos ativos.

Saída
Seu programa deve exibir a lista de Ativos organizada em ordem alfabética. Cada ativo deve ser apresentado em uma linha separada.

Examplo:
Se a Entrada é:
3
Financiamento de Imovel
Deposito
Reservas Bancarias
 A saíde deve ser:
Deposito
Financiamento de Imovel
Reservas Bancarias
*/

import Foundation

func main() {
    // Entrada dos tipos de ativos
    let quantidadeAtivos = Int(readLine()!)!
    var ativos: [String] = []

    // Entrada dos códigos dos ativos
    for _ in 0..<quantidadeAtivos {
        if let codigoAtivo = readLine() {
            ativos.append(codigoAtivo)
        }
    }

    // Ordenar os ativos em ordem alfabética
    ativos.sort()

    // Imprimir a lista de ativos ordenada
    for ativo in ativos {
        print(ativo)
    }
}

main()
