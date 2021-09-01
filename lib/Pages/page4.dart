import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  static final String id = 'page4';
 final String? input;
  Page4({this.input});



  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Text(widget.input?? 'Null'),
    );
  }
}
