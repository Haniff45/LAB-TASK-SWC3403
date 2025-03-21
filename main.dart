import 'package:flutter/material.dart';
import 'screens/main_navigation_screen.dart';
import 'screens/exhibition_details_screen.dart';
import 'screens/about_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Museum of Islamic Art Malaysia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainNavigationScreen(),
        '/exhibition-details': (context) => const ExhibitionDetailsScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
