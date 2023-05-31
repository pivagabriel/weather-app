import 'package:flutter/material.dart';

Widget currentWeather (IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 94.0,
        ),
        const SizedBox(height: 10.0),
        Text(
          temp,
          style: const TextStyle (
            fontSize: 66.0,
            color: Colors.white
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          location,
          style: const TextStyle(
            fontSize: 18.0, 
            color: Colors.white
          ),
        )
      ]),
  );
}