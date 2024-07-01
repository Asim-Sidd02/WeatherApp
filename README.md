# Flutter Weather App

## _A simple weather app built with Flutter that allows users to search for weather information by city._

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [File Structure](#file-structure)

- [Author](#author)
- [License](#license)

## Introduction

A simple weather app built with Flutter that allows users to search for weather information by city

## Features

- Search for weather information by city name
- Display current temperature, weather condition, humidity, and wind speed
- Responsive design that works on both mobile and tablet devices
- Refresh button to fetch updated weather data
- Persistent storage of the last searched city

## Prerequisites

Before running the application, ensure you have the following installed:

- Flutter SDK
- Dart SDK
- Android SDK / Xcode (depending on your target platform)
- IDE (e.g., VS Code, Android Studio) with Flutter and Dart plugins

## Installation

Clone the repository:

```sh
git clone https://github.com/Asim-Sidd02/WeatherApp.git
cd Weather-App



```

Install the dependencies using flutter:

```sh
flutter pub get
```
Run the project:

```sh
flutter run
```

## File Structure

The project directory structure is organized as follows:

- **lib/**: 
  - **main.dart** 
- **Provider/**:
  - **weather_provider.dart**
- **services/**: 
  - **weather_service.dart**
- **Screens/**: 
  - **home_screen.dart**
  - **weather_detail_screen.dart**
 
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


