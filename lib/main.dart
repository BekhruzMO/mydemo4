import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/home_page.dart';
import 'package:mydemo4/Pages/page2.dart';
import 'package:mydemo4/Pages/page3.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        Page2.id: (context) => Page2(),
        Page3.id: (context)=>Page3()
      },
    );
  }
}

/*routes: {
HomePage.id: (context)=>HomePage(),
Page2.id: (context)=>Page2()
},*/

