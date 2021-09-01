

import 'package:flutter/material.dart';
//import 'package:mydemo4/Pages/home_page.dart';
import 'package:mydemo4/Pages/page4.dart';


class Page3 extends StatefulWidget {
  static final String id = 'page_3';
@override
  _Page3State createState() => _Page3State();
}



class _Page3State extends State<Page3> {

  getMatn() {
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (BuildContext context) {
          return new Page4(input:"Hello Flutter",);
        },));
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 3'),
      ),
      body:
      TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () {
          getMatn();
          //Navigator.of(context).pushReplacementNamed(HomePage.id);
        },
        child: Text('Back to page2',
          style: TextStyle(fontSize: 26, color: Colors.white),),
      ),


    );
  }
}
