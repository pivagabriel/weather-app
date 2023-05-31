import 'package:flutter/material.dart';
import 'package:weather_app/api/weather_api_client.dart';
import 'package:weather_app/models/weather_day_model.dart';
import 'package:weather_app/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  WeatherApiClient client = WeatherApiClient();
  WeatherDay? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("lat", "lon");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 81, 54, 86), Color.fromARGB(255, 221, 134, 53)]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 57, 57, 153),
          elevation: 0.0,
          title: const Text(
            "Weather App", 
            style: TextStyle(color: Colors.white),
            ),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.wb_sunny_rounded, "${data!.temperature_min}°C", "${data!.name}"),
                  const SizedBox(height: 60.0),
                  const Text("Additional Information"),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        )
      ),
    );
  }
}