
import 'package:eatease/services/auth/auth_gate.dart';
import 'package:eatease/firebase_options.dart';
import 'package:eatease/models/restaurant.dart';
import 'package:eatease/themes/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(
   MultiProvider(
    providers: [
      //theme
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      //restaurant
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}