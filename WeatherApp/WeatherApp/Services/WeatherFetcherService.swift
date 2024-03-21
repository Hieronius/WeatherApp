import Foundation

struct WeatherFetcherService {
    
    func fetchWeather(latitude: Double, longitude: Double, completionHandler: @escaping(Weather) -> Void) {
        
        let urlString = "https://api.weather.yandex.ru/v2/forecast?lat=\(latitude)&lon=\(longitude)"
        
        guard let url = URL(string: urlString) else { return }
        
        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        request.addValue("\(APIKeyService.APIKey)", forHTTPHeaderField: "X-Yandex-API-Key")
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            if let weather = JSONParserService.parseJSON(withData: data) {
                completionHandler(weather)
            }
        }
        
        task.resume()
    }
}
