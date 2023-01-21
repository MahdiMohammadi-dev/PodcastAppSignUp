import 'package:flutter/material.dart';
import 'package:podcast/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(178, 189, 196, 167)))),
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Color.fromARGB(178, 189, 196, 167)),
            scaffoldBackgroundColor: const Color.fromARGB(255, 47, 47, 47)),
        home: const LoginPage());
  }
}
