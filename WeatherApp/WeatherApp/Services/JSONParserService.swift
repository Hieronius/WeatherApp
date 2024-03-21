import Foundation

struct JSONParserService {
    
    static func parseJSON(withData data: Data) -> Weather? {
        
        let decoder = JSONDecoder()
        
        do {
            let weatherData = try decoder.decode(WeatherData.self, from: data)
            guard let weather = Weather(weatherData: weatherData) else {
                return nil
            }
            return weather
        } catch let error as NSError {
            print(String(describing: error))
            return nil
        }
    }
}
