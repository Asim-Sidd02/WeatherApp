import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherProvider extends ChangeNotifier {
  Map<String, dynamic>? _weatherData;
  bool _isLoading = false;
  String _errorMessage = '';

  Map<String, dynamic>? get weatherData => _weatherData;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  Future<void> fetchWeather(String cityName) async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    const apiKey = 'e3a33f2da96fd7539ee3717ba52b5749';
    final url = 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        _weatherData = json.decode(response.body);
      } else if (response.statusCode == 404) {
        _errorMessage = 'City not found. Please enter a valid city name.';
      } else {
        _errorMessage = 'Could not fetch weather data. Please try again later.';
      }
    } catch (e) {
      _errorMessage = 'An error occurred. Please check your internet connection and try again.';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
