import UIKit

final class WeatherView: UIView {
    
    // MARK: - Private Properties
    
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
        setupWeatherStackView()
    }
    
    private func setupWeatherStackView() {
        weatherStackView = UIStackView()
        weatherStackView.axis = .vertical
        weatherStackView.spacing = 15
        weatherStackView.backgroundColor = .red
        
        addSubview(weatherStackView)
        
        // Disable translatesAutoresizingMaskIntoConstraints to use NSLayoutConstraints
        weatherStackView.translatesAutoresizingMaskIntoConstraints = false

        // Add constraints using NSLayoutConstraint
        NSLayoutConstraint.activate([
            weatherStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            weatherStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            weatherStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            weatherStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -15)
        ])
        
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
        currentTemperatureStack = UIStackView()
        currentTemperatureStack.axis = .horizontal
        currentTemperatureStack.spacing = 10
        
        currentTemperatureLabel = UILabel()
        
        currentTemperatureValue = UILabel()
        
        currentTemperatureStack.addArrangedSubview(currentTemperatureLabel)
        currentTemperatureStack.addArrangedSubview(currentTemperatureValue)
        
        // constraints for stack content
        
        weatherStackView.addArrangedSubview(currentTemperatureStack)
        
        // constraints for stack to container
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
