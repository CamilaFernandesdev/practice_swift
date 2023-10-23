/**
Descrição

Durante uma reunião de acionistas, alguns pontos importantes são discutidos e com isso surge a necessidade 
do envolvimento da equipe de desenvolvedores. Com isso, você foi designado para criar uma interface que permitirá 
aos acionistas de uma empresa acessarem informações relevantes sobre as análises da organização bancária. 
Sua tarefa é implementar uma classe que representa essa interface e que fornece um método para consultar as análises 
de desempenho e outros tipos dentro de um determinado período.

Requisitos:

A classe deve ter um método chamado obterAnalisesDesempenho que recebe como parâmetros uma data inicial e 
uma data final.

Entrada

As datas inicial e final, no formato "dd/mm/aaaa", representando o intervalo de tempo desejado para consulta.
Saída

Uma lista contendo as análises de desempenho financeiro realizadas dentro do período especificado.

Exemplos
de entrada: 01/04/2023
20/05/2023

a saida deve ser: Analise de Politicas e Regulamentacoes
Analise de Ativos

se a entrada for: 05/03/2023
05/04/2023
a saida deve ser: Analises Comporativas
Analise de Politicas e Regulamentacoes
*/

import Foundation

func main() {
    let interfaceAcionistas = InterfaceAcionistas()
    let scanner = Scanner()

    let dataInicial = scanner.nextLine()
    let dataFinal = scanner.nextLine()

    let analises = interfaceAcionistas.obterAnalisesDesempenho(dataInicial: dataInicial, dataFinal: dataFinal)

    for analise in analises {
        print(analise)
    }
}

class InterfaceAcionistas {
    func obterAnalisesDesempenho(dataInicial: String, dataFinal: String) -> [String] {
        var analises = [String]()

        var analisesOriginais = [Analise]()
        analisesOriginais.append(Analise(data: "01/01/2023", analise: "Analise de Desempenho Financeiro"))
        analisesOriginais.append(Analise(data: "15/02/2023", analise: "Analise de Riscos e Exposicoes"))
        analisesOriginais.append(Analise(data: "31/03/2023", analise: "Analises Corporativas"))
        analisesOriginais.append(Analise(data: "01/04/2023", analise: "Analise de Politicas e Regulamentacoes"))
        analisesOriginais.append(Analise(data: "15/05/2023", analise: "Analise de Ativos"))
        analisesOriginais.append(Analise(data: "30/06/2023", analise: "Analise de Inovacao e Tecnologia"))

        // Filtrar as análises dentro do período especificado
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        if let dateInicial = dateFormatter.date(from: dataInicial), let dateFinal = dateFormatter.date(from: dataFinal) {
            analisesOriginais.filter { analise in
                if let analiseDate = dateFormatter.date(from: analise.data) {
                    return (analiseDate >= dateInicial && analiseDate <= dateFinal)
                }
                return false
            }.forEach { filteredAnalise in
                analises.append(filteredAnalise.analise)
            }
        }

        return analises
    }
}

class Analise {
    let data: String
    let analise: String

    init(data: String, analise: String) {
        self.data = data
        self.analise = analise
    }
}

class Scanner {
    func nextLine() -> String {
        let line = readLine()
        return line ?? ""
    }
}

main()
