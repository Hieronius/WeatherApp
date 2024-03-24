import UIKit

final class WeatherView: UIView {
    
    // MARK: - Private Properties
    
    private var weatherContainer: UIView!
    private var weatherStackView: UIStackView!
    
    private var currentTemperatureStack: UIStackView!
    private var currentTemperatureLabel: UILabel!
    private var currentTemperatureValue: UILabel!
    
    private var cloudnessStack: UIStackView!
    private var cloudnessLabel: UILabel!
    private var cloudnessValue: UILabel!
    
    private var highestTemperatureStack: UIStackView!
    private var highestTemperatureLabel: UILabel!
    private var highestTemperatureValue: UILabel!
    
    private var lowestTemperatureStack: UIStackView!
    private var lowestTemperatureLabel: UILabel!
    private var lowestTemperatureValue: UILabel!
    
    private var windSpeedStack: UIStackView!
    private var windSpeedLabel: UILabel!
    private var windSpeedValue: UILabel!
    
    private var pressureStack: UIStackView!
    private var pressureLabel: UILabel!
    private var pressureValue: UILabel!
    
    private var humidityStack: UIStackView!
    private var humidityLabel: UILabel!
    private var humidityValue: UILabel!
    
    private var feelsLikeStack: UIStackView!
    private var feelsLikeLabel: UILabel!
    private var feelsLikeValue: UILabel!
    
    private var visibilityStack: UIStackView!
    private var visibilityLabel: UILabel!
    private var visibilityValue: UILabel!
    
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
