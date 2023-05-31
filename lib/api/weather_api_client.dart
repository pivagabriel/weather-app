import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_day_model.dart';

class WeatherApiClient {
  Future<WeatherDay>? getCurrentWeather(String? lat, String? lon) async {
    var endpoint = Uri.parse("https://api.tutiempo.net/json/?lan=pt&apid=zwDX4azaz4X4Xqs&ll=-22.9064,-47.0616");

    var respone = await http.get(endpoint);
    var body = jsonDecode(respone.body);
    print(WeatherDay.fromJson(body).name);
    return WeatherDay.fromJson(body);
  }
}