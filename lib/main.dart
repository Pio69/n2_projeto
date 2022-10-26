import 'package:n2_projeto/pages/events.page.dart';
import 'package:n2_projeto/pages/initial.page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import './pages/login.page.dart';

import 'package:flutter/material.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classificados',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}
