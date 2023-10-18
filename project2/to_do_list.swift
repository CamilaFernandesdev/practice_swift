import Foundation

// Enumeração para representar o status de uma tarefa
enum TaskStatus {
    case pending
    case completed
}

// Estrutura para representar uma tarefa
struct Task {
    var title: String
    var status: TaskStatus
}

// Classe para gerenciar uma lista de tarefas
class TaskList {
    var tasks: [Task] = []
    
    // Função para adicionar uma nova tarefa à lista
    func addTask(title: String) {
        let newTask = Task(title: title, status: .pending)
        tasks.append(newTask)
    }
    
    // Função para marcar uma tarefa como concluída
    func completeTask(index: Int) {
        if index >= 0 && index < tasks.count {
            tasks[index].status = .completed
        }
    }
    
    // Função para remover uma tarefa da lista
    func removeTask(index: Int) {
        if index >= 0 && index < tasks.count {
            tasks.remove(at: index)
        }
    }
    
    // Função para listar todas as tarefas
    func listTasks() {
        for (index, task) in tasks.enumerated() {
            let status = (task.status == .completed) ? "✔️" : "❌"
            print("\(index + 1). \(status) \(task.title)")
        }
    }
}

// Exemplo de uso
let toDoList = TaskList()

toDoList.addTask(title: "Comprar leite")
toDoList.addTask(title: "Estudar Swift")
toDoList.addTask(title: "Fazer exercícios")

toDoList.listTasks()

toDoList.completeTask(index: 0)

toDoList.listTasks()

toDoList.removeTask(index: 1)

toDoList.listTasks()
