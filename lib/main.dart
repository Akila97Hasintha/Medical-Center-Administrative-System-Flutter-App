import 'dart:async';
import 'Screens/login.dart';
import 'Screens/login_form.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';/// import dart packege


void main() {
  runApp(
    DevicePreview(

      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:loginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => loginForm()));
    });
  }

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /*appBar: AppBar(

        title: Text("Medical Center"),
      ),*/
      body:Container(

        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assests/ruhuna.jpg"),
              fit: BoxFit.cover,
          ),
        ),
        child: Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Image.asset("assests/logo.png",height: 600,),
                SizedBox(height: 20,),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              ],
            ),
        ),
      ),
    );
  }
}


