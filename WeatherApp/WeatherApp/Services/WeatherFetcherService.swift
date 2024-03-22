import Foundation

struct WeatherFetcherService {
    
    static func fetchWeather(latitude: Double, longitude: Double, completionHandler: @escaping (Result<WeatherCookedData, Error>) -> Void) {
        
        // Generate the endpoint URL
        let urlResult = APIEndpointService.generateEndpointURL(latitude: latitude, longitude: longitude, exclude: "minutely,hourly,alerts")
        
        // Check if the result is a success
        if case let .success(url) = urlResult {
            // Create a URLRequest with the generated URL
            var request = URLRequest(url: url, timeoutInterval: Double.infinity)
            
            // Set the HTTP method to "GET"
            request.httpMethod = "GET"
            
            // Perform the network request
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                if let error = error {
                    // Handle the network error
                    completionHandler(.failure(error))
                    return
                }
                
                guard let data = data else {
                    // Handle the case where data is nil
                    let error = NSError(domain: "DataError", code: 400, userInfo: [NSLocalizedDescriptionKey: "No data received"])
                    completionHandler(.failure(error))
                    return
                }
                
                // Parse the JSON data into Weather object
                if let weather =  JSONParserService.parseJSON(withData: data) {
                    // Call the completion handler with the weather data
                    completionHandler(.success(weather))
                } else {
                    // Handle the case where parsing JSON fails
                    let error = NSError(domain: "JSONParsingError", code: 400, userInfo: [NSLocalizedDescriptionKey: "Failed to parse JSON"])
                    completionHandler(.failure(error))
                }
            }
            
            // Resume the task
            task.resume()
            
        } else if case let .failure(error) = urlResult {
            // Handle the case where generating the endpoint URL fails
            completionHandler(.failure(error))
        }
    }
}
