/**
Entrada

O programa irá solicitar ao usuário que digite o tipo de cofre a ser criado: "digital" ou "físico". 
Se for escolhido o tipo "digital", o programa irá solicitar a senha e a confirmação de senha do cofre 
digital (ambas com apenas números). Caso seja escolhido o tipo "físico", não é necessário nenhuma outra entrada.
Saída

O programa irá exibir as informações do cofre criado. Para o Cofre Digital, será exibido o tipo e o método de 
abertura (senha). Para o Cofre Físico, será exibido apenas o tipo e o método de abertura (chave).
Exemplos
de entrada: digital
12345
1234

a saida deve ser: Tipo: Cofre Digital
Metodo de abertura: Senha
Senha incorreta!
*/

import Foundation

class Cofre {
    var tipo: String
    var metodoAbertura: String

    init(tipo: String, metodoAbertura: String) {
        self.tipo = tipo
        self.metodoAbertura = metodoAbertura
    }

    func imprimirInformacoes() {
        print("Tipo:", tipo)
        print("Metodo de abertura:", metodoAbertura)
    }
}

class CofreDigital: Cofre {
    var senha: Int

    init(senha: Int) {
        self.senha = senha
        super.init(tipo: "Cofre Digital", metodoAbertura: "Senha")
    }

    func validarSenha(confirmacaoSenha: Int) -> Bool {
        return confirmacaoSenha == senha
    }
}

class CofreFisico: Cofre {
    override init(tipo: String, metodoAbertura: String) {
        super.init(tipo: "Cofre Fisico", metodoAbertura: "Chave")
    }
}

func main() {
    if let tipoCofre = readLine() {
        if tipoCofre.lowercased() == "digital" {
            if let senhaStr = readLine(), let senha = Int(senhaStr),
               let confirmacaoSenhaStr = readLine(), let confirmacaoSenha = Int(confirmacaoSenhaStr) {

                let cofre = CofreDigital(senha: senha)
                cofre.imprimirInformacoes()

                // Verificar se a senha e a confirmação de senha coincidem
                if cofre.validarSenha(confirmacaoSenha: confirmacaoSenha) {
                    print("Cofre aberto!")
                } else {
                    print("Senha incorreta!")
                }
            }
        } else if tipoCofre.lowercased() == "fisico" {
            let cofre = CofreFisico(tipo: "Cofre Fisico", metodoAbertura: "Chave")
            cofre.imprimirInformacoes()
        }
    }
}

main()
