
import 'package:flutter/material.dart';

import 'package:goldworld/adminViewController.dart';
import 'package:goldworld/buy.dart';
import 'package:goldworld/forgotPassword.dart';
import 'package:goldworld/history.dart';
import 'package:goldworld/order.dart';
import 'package:goldworld/signin.dart';
import 'package:goldworld/signup.dart';
import 'Landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     const String title='GoldWorld';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(




      ),
      initialRoute: '/',
      routes: {

        '/6':(context)=>const AdminViewController(),
        '/5':(context)=>const SignIn(),
        '/':(context)=>const Signup(),
        '/4':(context)=>const MyHomePage(title: title),
        '/1':(context)=>const Buy(),
        '/2':(context)=>const Orders(),
        '/3':(context)=>const History(),
        '/7':(context)=>const ForgotPassword()



      },

    );
  }
}

