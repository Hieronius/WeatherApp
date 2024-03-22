import UIKit

final class WeatherViewController: GenericViewController<WeatherView> {
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        WeatherFetcherService.fetchWeather(latitude: 55.7558, longitude: 37.6173) { result in
            switch result {
                case .success(let weatherData):
                    // Handle the successful retrieval of weather data
                    // You can use the weatherData object here to update your UI or perform other tasks
                    print("Weather data fetched successfully:", weatherData)
                case .failure(let error):
                    // Handle the failure to fetch weather data
                    // You can display an error message or perform other error-handling tasks
                    print("Error fetching weather data:", error.localizedDescription)
                }
        }
        print("hello")
    }


}

