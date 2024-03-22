import Foundation

struct CoordinateService {
    static func isValid(latitude: Double, longitude: Double) -> Bool {
        // Check latitude range (-90 to 90 degrees) and longitude range (-180 to 180 degrees)
        // Use common geographical values
        let validLatitude = (-90.0...90.0).contains(latitude)
        let validLongitude = (-180.0...180.0).contains(longitude)
        
        // Return true if both latitude and longitude are within valid ranges
        return validLatitude && validLongitude
    }
}
