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
        cityName = rawData.name
        temperature = rawData.main.temp
        feelsLikeTemperature = rawData.main.feelsLike
        minTemperature = rawData.main.tempMin
        maxTemperature = rawData.main.tempMax
        pressure = rawData.main.pressure
        humidity = rawData.main.humidity
        visibility = rawData.visibility
        windSpeed = rawData.wind.speed
        windDegree = rawData.wind.deg
        windGust = rawData.wind.gust
        weatherDescription = rawData.weather.first?.description ?? ""
        weatherIcon = rawData.weather.first?.icon ?? ""
        cloudiness = rawData.clouds.all
        rain1h = rawData.rain.the1H
        sunrise = rawData.sys.sunrise
        sunset = rawData.sys.sunset
        countryCode = rawData.sys.country
    }
}

