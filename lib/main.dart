// main.dart
import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'mainscreen/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'My Flutter App',
        initialRoute: '/',
        routes: {
          '/': (context) => SignUpScreen(),
          '/signup': (context) => SignUpScreen(),
          '/profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}
