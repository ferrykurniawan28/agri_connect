import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.navigate('/home');
    });
    return Scaffold(
      body: Center(
        child: Text(
          'Agri Connect',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
