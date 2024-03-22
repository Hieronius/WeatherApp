import Foundation

struct JSONParserService {
    
    static func parseJSON(withData data: Data) -> WeatherCookedData? {
        
        let decoder = JSONDecoder()
        
        do {
            let weatherRawData = try decoder.decode(WeatherRawData.self, from: data)
            // Ensure that the decoding operation succeeded and return the Weather object
            // use custom init to get cooked data
            let cookedData = WeatherCookedData(from: weatherRawData)
            return cookedData
        } catch {
            // Handle any errors that occur during JSON decoding
            print("Error decoding JSON:", error.localizedDescription)
            return nil
        }
    }
}
