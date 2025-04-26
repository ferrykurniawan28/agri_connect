import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  final String weather = "Cloudy";
  final String month = "October";
  final String season = "Autumn";
  final String rainIntensity = "Low";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                weather,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Icon(Icons.wb_cloudy, size: 50, color: Colors.blue),
              const SizedBox(height: 8),
              Text('16°C', style: TextStyle(fontSize: 20)),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    'It is a great time for farming, check your task manager',
                    style: TextStyle(fontSize: 16),
                    overflow: TextOverflow.visible,
                    softWrap: true,
                  ),
                ),
                const SizedBox(height: 8),
                Text(DateFormat('MMMM dd, yyyy').format(DateTime.now())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WeatherWidget(),
        const SizedBox(height: 20),
        Container(
          height: 200,
          // margin: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/farm.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Center(
            child: Text(
              'Your Farm',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 200,
          // margin: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/farm.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Center(
            child: Text(
              'Your Farm',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
