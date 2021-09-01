import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static final String id='page_2';
 final String? name;
 final int? age;
  Page2({this.name, this.age});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
          child: Text('Name: ${widget.name}, age:${widget.age}',
            style: TextStyle(color: Colors.white, fontSize: 32), ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
