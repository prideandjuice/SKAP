import 'package:flutter/material.dart';
import 'package:skap/screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/home_page.dart';
import 'package:skap/screens/next_signup.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SKAP',
        theme: ThemeData(primarySwatch: Colors.purple),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/home': (context) => const HomePage(),
          '/signup': (context) => SignUpScreen(),
          '/next_signup': (context) => NextSignUpScreen(),
          '/dashboard' : (context) => Dashboard(),
        });
  }
}
