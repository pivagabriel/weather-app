class WeatherDay {
  String? name;
  String? date;
  int? temperature_max;
  int? temperature_min;
  String? icon;
  String? text;
  int? humidity;
  int? wind;
  String? wind_direction;
  String? icon_wind;
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moon_phases_icon;

  WeatherDay({
    this.name,
    this.date,
    this.temperature_max,
    this.temperature_min,
    this.icon,
    this.text,
    this.humidity,
    this.wind,
    this.wind_direction,
    this.icon_wind,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moon_phases_icon
  });

  WeatherDay.fromJson(Map<String, dynamic> json) {
    name = json["locality"]["name"];
    date = json["day1"]["date"];
    temperature_max = json["day1"]["temperature_max"];
    temperature_min = json["day1"]["temperature_min"];
    icon = json["day1"]["icon"];
    text = json["day1"]["text"];
    humidity = json["day1"]["humidity"];
    wind = json["day1"]["wind"];
    wind_direction = json["day1"]["wind_direction"];
    icon_wind = json["day1"]["icon_wind"];
    sunrise = json["day1"]["sunrise"];
    sunset = json["day1"]["sunset"];
    moonrise = json["day1"]["moonrise"];
    moonset = json["day1"]["moonset"];
    moon_phases_icon = json["day1"]["moon_phases_icon"];
  }
}