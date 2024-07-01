import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/weather_provider.dart';

class WeatherDetailsScreen extends StatelessWidget {
  const WeatherDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherData = context.watch<WeatherProvider>().weatherData;

    if (weatherData == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Weather Details'),
        ),
        body: const Center(
          child: Text('No data available'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Weather Details'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                '${weatherData['name']}, ${weatherData['sys']['country']}',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                'Tuesday, ${_formatDate(weatherData['dt'])}',
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 30),
              _buildWeatherIcon(weatherData['weather'][0]['icon']),
              Text(
                '${weatherData['main']['temp']}°C',
                style: const TextStyle(fontSize: 80, color: Colors.white),
              ),
              Text(
                '${weatherData['weather'][0]['description']}',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                'Feels like ${weatherData['main']['feels_like']}°C',
                style: const TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoTile('Chance of rain', '${weatherData['clouds']['all']}%', Icons.grain),
                  _buildInfoTile('Wind speed', '${weatherData['wind']['speed']} m/s', Icons.air),
                  _buildInfoTile('Humidity', '${weatherData['main']['humidity']}%', Icons.opacity),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Today',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<WeatherProvider>().fetchWeather(weatherData['name']);
                },
                child: const Text('Refresh'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherIcon(String iconCode) {
    return Image.network('http://openweathermap.org/img/wn/$iconCode@2x.png', scale: 0.5);
  }

  Widget _buildInfoTile(String title, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.white),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
        ),
      ],
    );
  }


  String _formatDate(int timestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return '${date.day}-${date.month}-${date.year}';
  }
}
