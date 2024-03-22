import Foundation

struct WeatherCookedData {
    let latitude: Double
    let longitude: Double
    let timezone: String
    let currentTemperature: Double
    let currentLocation: String
    let currentCloudiness: String
    let currentWindSpeed: Double
    let weekWeatherForecast: [DailyCookedData]
}

struct DailyCookedData {
    let date: Date
    let temperature: Temperature
    let cloudiness: String
    let windSpeed: Double
}

struct Temperature {
    let day: Double
    let min: Double
    let max: Double
}

// MARK: Custom Init
// So, we won't lose the default one
extension WeatherCookedData {
    init(from weatherRawData: WeatherRawData) {
        self.latitude = weatherRawData.lat
        self.longitude = weatherRawData.lon
        self.timezone = weatherRawData.timezone
        self.currentTemperature = weatherRawData.current.temp
        self.currentLocation = "\(weatherRawData.lat), \(weatherRawData.lon)"
        self.currentCloudiness = weatherRawData.current.weather.first?.description ?? ""
        self.currentWindSpeed = weatherRawData.current.windSpeed
        self.weekWeatherForecast = weatherRawData.daily.map { dailyData in
            return DailyCookedData(date: Date(timeIntervalSince1970: TimeInterval(dailyData.dt)),
                                   temperature: Temperature(day: dailyData.temp.day,
                                                            min: dailyData.temp.min,
                                                            max: dailyData.temp.max),
                                   cloudiness: dailyData.weather.first?.description ?? "",
                                   windSpeed: dailyData.windSpeed)
        }
    }
}
