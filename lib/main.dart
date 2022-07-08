import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_to_unlock/Src/Homepage.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.deepOrange,
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slide To Unlock',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
