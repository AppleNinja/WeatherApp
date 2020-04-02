# WeatherApp

An iOS app to fetch the weather forecast of multiple cities.

## Features

Create landing screen which navigates to the Step 1 and Step 2.

STEP I
1. The app should accept multiple city names from the user(comma Separated) and display
following attributes using api’s to fetch current temperatures. User should enter minimum 3
cities and max 7 cities.

- Temperature (Min and Max)

- Weather (description)

- Wind Speed

STEP II
1. Find the current city using GPS
2. Display the weather forecast for the current city for 5 days 3 hours for current City in a
list. Refer following link to get forecast for 5 days and display above mentioned attributes
for 5 days 3 hours by clubbing each day.

## Getting Started

1. Clone the repo
2. Go to the project directory
3. Run pod install

## Architectural Pattern

MVVM-C

## Application Flow

- Application starts with MainViewController which provides two options
-- Search for Cities
-- Current City

1. Search for Cities

Tapping on this takes you to the screen where you can search for minimum 3 cities and maximum 7 as a comma separated string and it will display all the weather details

2. Current

Tapping on this, requests the users permission to access his current location, on allowing access, the app will fetch his coordinates and fetch the weather details from the API based on his location. On denying access to the location, the use will get an alert message and he can go into the phone's settings to enable the location access again.

## Pods Integrated

- Alamofire: For Networking
- IQKeyboardManagerSwift: For keyboard handling
- KeychainSwift: For saving and reading from the Keychain
- LocalizeSwift: For localization and in-app language switching
- RxSwift: Swift Reactive Programming
- SwiftMessages: Custom Message Bar
- SwiftLocation: GPS Location tracking

## Supports

- Localizable Strings
- Light and Dark themes in iOS 13
- GPS Location

## Tests

- UITests
- UnitTests

## How to run the tests

1. Open the WeatherApp.xcworkspace in Xcode
2. Press ⌘ + U or go to Product -> Test
3. The application will get build and the test cases will be executed
4. Press the on the "Show the Report Navigator" button in Xcode
5. Press the coverage option under the test to see the code coverage

## Generate Code Coverage Report

1. Install Slather using command "sudo gem install slather" in the Terminal
2. Execute the Test Cases in Xcode as shown above
3. Run the below command in Terminal after giving the correct path to the WeatherApp.xcworkspace & WeatherApp.xcodeproj files
4. Code coverage report will be generated in the project directory and will get opened in your web browser

```bash
slather coverage --show --html --scheme WeatherApp --workspace path/to/WeatherApp.xcworkspace path/to/WeatherApp.xcodeproj

```

## Tools Used

MacOS 10.15.4, Xcode 11.4, iOS 13.4, iPhone 11 Pro Max
