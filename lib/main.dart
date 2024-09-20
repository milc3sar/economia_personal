import 'package:economia_personal/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainClass(),
  ));
}

class MainClass extends StatelessWidget {
  const MainClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Economía Personal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
    );
  }
}
