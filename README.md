# Flutter Weather App

## _This Flutter application fetches and displays current weather and 5-day forecast for a selected city using a public API. It also stores the selected city and weather data locally for offline access._

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [File Structure](#file-structure)
- [ScreenShots](#screenshots)
- [Author](#author)
- [License](#license)

## Introduction

This Flutter app provides a user-friendly interface to view current weather details and a forecast for the next five days based on the selected city. It utilizes a public API to fetch real-time weather data and stores this information locally using Hive, ensuring data availability even when offline.

## Features

- Display current weather information including temperature, description, sunrise, sunset, humidity, and precipitation.
- Show a 5-day weather forecast with details like date, temperature, and description.
- Store selected city and fetched weather data locally for offline access.
- Simple and clean UI designed for ease of use.

## Prerequisites

Before running the application, ensure you have the following installed:

- Flutter SDK
- Dart SDK
- Android SDK / Xcode (depending on your target platform)
- IDE (e.g., VS Code, Android Studio) with Flutter and Dart plugins

## Installation

Clone the repository:

```sh
git clone https://github.com/Asim-Sidd02/Weather-App.git
cd Weather-App



```

Install the dependencies using flutter:

```sh
flutter pub get
```

## File Structure

The project directory structure is organized as follows:

- **lib/**: 
  - **main.dart** 
- **Provider/**:
  - **weather_provider.dart**
- **services/**: 
  - **weather_service.dart**
  - - **Screens/**: 
   - **home_screen.dart**
   - weather_detail_screen
 
- **README.md**: Project overview and file structure details.
- **pubspec.yaml**: Flutter project configuration file with dependencies and other settings.

## Provider

The **Provider/** directory contains data model classes used throughout the application:

- **weather_provider**:  Fetches weather data from the OpenWeatherMap API



## Services

The **services/** directory contains service classes responsible for data handling and API interactions:

- **weather_service.dart**: Implements methods to fetch weather data from a public API.


## Screens

The **lib/** directory contains screen files:

- **home_screen.dart**: Search for weather information by city name
- **weather_screen.dart**: Displays the weather information

## Dependencies

This project relies on the following Flutter packages:

- **http**: For making HTTP requests to fetch data from the weather API.
- **provider**: For state management 

  
These dependencies are specified in the **pubspec.yaml** file.






## Author

- **Asim Siddiqui**
- **Contact Information**
  - Email: asimsiddiqui8181@gmail.com
  - LinkedIn: [Asim Siddiqui](https://www.linkedin.com/in/asim-siddiqui-a71731229/)
  - Portfolio: [Asim Sidd](https://asimsidd.vercel.app/)


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


