import 'package:flutter/material.dart';
import 'package:shipper/views/bottomnavbarapage.dart';
import 'utils/colors/materialcolors.dart';
import 'views/splash.dart';
import 'views/users/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shippers Cargo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme:
        //     ColorScheme.fromSeed(seedColor: MaterialColors.primaryColor),
        primarySwatch: MaterialColors.primaryColor,
        useMaterial3: true,
      ),
      initialRoute: '/splashPage',
      routes: {
        '/splashPage': (context) => const SplashScreenPage(),
        '/Login': (context) => const Login(),
      },
      home: const BottomNavBarPage(),
    );
  }
}
