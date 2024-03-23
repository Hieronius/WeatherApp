import Foundation

// MARK: - WeatherCookedData
struct WeatherCookedData {
    let cityName: String
    let temperature: Double
    let feelsLikeTemperature: Double
    let minTemperature: Double
    let maxTemperature: Double
    let pressure: Int
    let humidity: Int
    let visibility: Int
    let windSpeed: Double
    let windDegree: Int
    let windGust: Double
    let weatherDescription: String
    let weatherIcon: String
    let cloudiness: Int
    let rain1h: Double
    let sunrise: Int
    let sunset: Int
    let countryCode: String
}

extension WeatherCookedData {
    init(rawData: WeatherRawData) {
        self.cityName = rawData.name ?? "optionalValue"
        self.temperature = rawData.main?.temp ?? 0.0
        self.feelsLikeTemperature = rawData.main?.feelsLike ?? 0.0
        self.minTemperature = rawData.main?.tempMin ?? 0.0
        self.maxTemperature = rawData.main?.tempMax ?? 0.0
        self.pressure = rawData.main?.pressure ?? 0
        self.humidity = rawData.main?.humidity ?? 0
        self.visibility = rawData.visibility ?? 0
        self.windSpeed = rawData.wind?.speed ?? 0.0
        self.windDegree = rawData.wind?.deg ?? 0
        self.windGust = rawData.wind?.gust ?? 0.0
        self.weatherDescription = rawData.weather?.first?.description ?? "optionalValue"
        self.weatherIcon = rawData.weather?.first?.icon ?? "optionalValue"
        self.cloudiness = rawData.clouds?.all ?? 0
        self.rain1h = rawData.rain?.the1H ?? 0.0
        self.sunrise = rawData.sys?.sunrise ?? 0
        self.sunset = rawData.sys?.sunset ?? 0
        self.countryCode = rawData.sys?.country ?? "optionalValue"
    }
}

