import 'package:flutter/material.dart';
import 'package:open_weather_cubit/repositories/weather_repository.dart';
import 'package:open_weather_cubit/services/weather_api_services.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  _fetchWeather() {
    WeatherRepository(
      weatherApiServices: WeatherApiServices(httpClient: http.Client()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather')),
      body: Center(child: Text('HomePage')),
    );
  }
}
