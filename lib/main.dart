import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: const Color.fromRGBO(0, 255, 153, 1),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 0, 255, 153),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 0, 255, 145),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.all(const Color.fromARGB(255, 0, 255, 157)),
        ),
      ),
    );
  }
}
