import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Provider/weather_provider.dart';
import './Screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_) => WeatherProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
