struct WeatherData {
    let cityName: String
    let temperature: Double
    let condition: WeatherCondition
    let humidity: Int
}

enum WeatherCondition: String {
    case sunny = "Sunny"
    case cloudy = "Cloudy"
    case rainy = "Rainy"
}
