import Foundation

struct APIEndpointService {
    static let baseURL = "https://api.openweathermap.org/data/2.5/weather"
    
    // Method to generate an endpoint URL based on latitude, longitude, and exclude parameter
    // Result<URL, Error> - it's an ENUM with .success/.failure cases by default
    static func generateEndpointURL(latitude: Double, longitude: Double, exclude: String) -> Result<URL, Error> {
        
        // Check if the coordinates are valid using CoordinateService
        guard CoordinateService.isValid(latitude: latitude, longitude: longitude) else {
            
            // If coordinates are invalid, create an error and return a failure result
            let error = NSError(domain: "InvalidCoordinates", code: 400, userInfo: [NSLocalizedDescriptionKey: "Invalid latitude or longitude"])
            return .failure(error)
        }
        
        // If coordinates are valid, continue to construct the URL
        let apiKey = APIKeyService.APIKey
        let urlString = "\(baseURL)?lat=\(latitude)&lon=\(longitude)&exclude=\(exclude)&appid=\(apiKey)"
        
        // Attempt to create a URL from the constructed urlString
        if let url = URL(string: urlString) {
            // If URL creation succeeds, return a success result with the URL
            return .success(url)
            
        } else {
            // If URL creation fails, create an error and return a failure result
            let error = NSError(domain: "InvalidURL", code: 400, userInfo: [NSLocalizedDescriptionKey: "Failed to create URL"])
            return .failure(error)
        }
    }
}
