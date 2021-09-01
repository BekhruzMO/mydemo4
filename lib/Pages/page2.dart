import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/page3.dart';

class Page2 extends StatefulWidget {

  static final String id = 'page2';
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('page 2'),
),
      body: Center(
        child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
          onPressed: (){
            Navigator.pushNamed(context, Page3.id);
          },
          child:
          Text(
            'Bu Page2',
            style: TextStyle(color: Colors.lightGreen, fontSize: 32),

          ),
        )



      ),

    );
  }
}
