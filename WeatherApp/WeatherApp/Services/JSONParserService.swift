import Foundation

struct JSONParserService {
    
    static func parseJSON(withData data: Data) -> Weather? {
        
        let decoder = JSONDecoder()
        
        do {
            let weatherData = try decoder.decode(WeatherData.self, from: data)
            // Ensure that the decoding operation succeeded and return the Weather object
            return Weather(weatherData: weatherData)
        } catch {
            // Handle any errors that occur during JSON decoding
            print("Error decoding JSON:", error.localizedDescription)
            return nil
        }
    }
}
