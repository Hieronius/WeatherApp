import UIKit

final class WeatherView: UIView {
    
    // MARK: - Private Properties
    
    var weatherContainer: UIView!
    var weatherStackView: UIStackView!
    
    var currentTemperatureStack: UIStackView!
    var currentTemperatureLabel: UILabel!
    var currentTemperatureValue: UILabel!
    
    var cloudnessStack: UIStackView!
    var cloudnessLabel: UILabel!
    var cloudnessValue: UILabel!
    
    var highestTemperatureStack: UIStackView!
    var highestTemperatureLabel: UILabel!
    var highestTemperatureValue: UILabel!
    
    var lowestTemperatureStack: UIStackView!
    var lowestTemperatureLabel: UILabel!
    var lowestTemperatureValue: UILabel!
    
    var windSpeedStack: UIStackView!
    var windSpeedLabel: UILabel!
    var windSpeedValue: UILabel!
    
    var pressureStack: UIStackView!
    var pressureLabel: UILabel!
    var pressureValue: UILabel!
    
    var humidityStack: UIStackView!
    var humidityLabel: UILabel!
    var humidityValue: UILabel!
    
    var feelsLikeStack: UIStackView!
    var feelsLikeLabel: UILabel!
    var feelsLikeValue: UILabel!
    
    var visibilityStack: UIStackView!
    var visibilityLabel: UILabel!
    var visibilityValue: UILabel!
    
    // MARK: - Initialization
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .darkGray
        // setupViews()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupViews() {
        setupWeatherContainerView()
    }
    
    private func setupWeatherContainerView() {
        setupWeatherStackView()
    }
    
    private func setupWeatherStackView() {
        setupCurrentTemperatureStack()
        setupCloudnessStack()
        setupHighestTemperatureStack()
        setupLowestTemperatureStack()
        setupWindSpeedStack()
        setupPressureStack()
        setupHumidityStack()
        setupFeelsLikeStack()
        setupVisibilityStack()
    }
    
    private func setupCurrentTemperatureStack() {
        
    }
    
    private func setupCloudnessStack() {
        
    }
    
    private func setupHighestTemperatureStack() {
        
    }
    
    private func setupLowestTemperatureStack() {
        
    }
    
    private func setupWindSpeedStack() {
        
    }
    
    private func setupPressureStack() {
        
    }
    
    private func setupHumidityStack() {
        
    }
    
    private func setupFeelsLikeStack() {
        
    }
    
    private func setupVisibilityStack() {
        
    }
    
}
