import 'package:flutter/material.dart';
import 'package:recipe/page/splashpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveUserPreference(bool isPreferenceEnabled) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('preferenceKey', isPreferenceEnabled);
}

Future<bool> getUserPreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? preferenceValue = prefs.getBool('preferenceKey');
  return preferenceValue ?? false;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPreferenceEnabled = false;

  @override
  void initState() {
    super.initState();
    getUserPreference().then((value) {
      setState(() {
        isPreferenceEnabled = value;
      });
    });
  }

  void togglePreference(bool newValue) {
    setState(() {
      isPreferenceEnabled = newValue;
    });
    saveUserPreference(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              displayMedium:
                  TextStyle(fontSize: 15, fontWeight: FontWeight.w500))),
      home: const SplashPage(),
    );
  }
}
