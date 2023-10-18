import Foundation

// Estrutura para representar os dados do clima
struct WeatherData {
    let cityName: String
    let temperature: Double
    let condition: WeatherCondition
    let humidity: Int
}

// Enumeração para representar as condições climáticas
enum WeatherCondition: String {
    case sunny = "Sunny"
    case cloudy = "Cloudy"
    case rainy = "Rainy"
    // Adicione outros casos conforme necessário
}

// Classe para lidar com solicitações de rede e decodificação JSON
class WeatherService {
    func fetchWeather(city: String, completion: @escaping (WeatherData?) -> Void) {
        // Substitua esta URL pela URL da API de previsão do tempo desejada
        let apiKey = "YOUR_API_KEY"
        let urlString = "https://api.example.com/weather?city=\(city)&apiKey=\(apiKey)"
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Erro na solicitação de rede: \(error.localizedDescription)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let weatherData = try decoder.decode(WeatherData.self, from: data)
                completion(weatherData)
            } catch {
                print("Erro na decodificação JSON: \(error.localizedDescription)")
                completion(nil)
            }
        }
        
        task.resume()
    }
}

// Exemplo de uso
let weatherService = WeatherService()

weatherService.fetchWeather(city: "New York") { weatherData in
    if let weatherData = weatherData {
        print("Cidade: \(weatherData.cityName)")
        print("Temperatura: \(weatherData.temperature)°C")
        print("Condição: \(weatherData.condition.rawValue)")
        print("Umidade: \(weatherData.humidity)%")
    } else {
        print("Cidade não encontrada ou erro na solicitação de rede.")
    }
}
