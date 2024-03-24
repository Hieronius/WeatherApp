import UIKit

final class SearchCityViewController: GenericViewController<SearchCityView> {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// So, i should just create a simple screen with text field and label.
// when user write the city name i should just convert it to the coordinates and pass it
// to WeatherViewController with Delegate and put it to FetcherWeatherService and update data
