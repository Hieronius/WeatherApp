import Foundation

struct APIEndpointService {
    static let baseURL = "https://api.openweathermap.org/data/3.0/onecall"
    
    static func generateEndpointURL(latitude: Double, longitude: Double, exclude: String) -> URL? {
        let apiKey = APIKeyService.APIKey
        let urlString = "\(baseURL)?lat=\(latitude)&lon=\(longitude)&exclude=\(exclude)&appid=\(apiKey)"
        return URL(string: urlString)
    }
}
