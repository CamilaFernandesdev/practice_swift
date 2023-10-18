/**Entrada:
A função deve receber os seguintes parâmetros:

valor_inicial: um número inteiro ou decimal representando o valor inicial do investimento.

taxa_juros: um número decimal representando a taxa de juros anual. Por exemplo, se a taxa for de 5%, o valor passado será 0.05.

periodo: um número inteiro representando a quantidade de anos do investimento.

Saída:
A função deve retornar o valor final do investimento após o período determinado, considerando os juros compostos. O valor final deve ser arredondado para duas casas decimais.

Exemplos
se a entrada:
5000
0.08
5

a saide deve ser:
Valor final do investimento: R$ 7346.64
*/

import Foundation

func calculateInvestmentValue() {
    guard let valorInicial = readLine().flatMap(Double.init),
          let taxaJuros = readLine().flatMap(Double.init),
          let periodo = readLine().flatMap(Int.init)
    else {
        return
    }
    
    var valorFinal = valorInicial

    // Calculo do valor final com juros compostos
    for _ in 1...periodo {
        valorFinal += valorFinal * taxaJuros
    }

    let formattedValue = String(format: "R$ %.2f", valorFinal)
    print("Valor final do investimento: \(formattedValue)")
}

calculateInvestmentValue()
