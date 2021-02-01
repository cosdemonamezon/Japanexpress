import 'package:Japanexpress/Screens/Customer/CustomerScreen.dart';
import 'package:Japanexpress/Screens/Home/HomeScreen.dart';
import 'package:Japanexpress/Screens/Login/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/customer': (context) => CustomerScreen(),
        '/maintain': (context) => CustomerScreen(),
      }
      
    );
  }
}
