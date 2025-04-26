import 'package:agri_connect/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: MainRoute(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/');
    return MaterialApp.router(
      title: 'Agri Connect',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      debugShowCheckedModeBanner: false,
    );
  }
}
