
import 'package:dentalcare/src/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 Future <void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
   runApp(MyApp());
 }
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}