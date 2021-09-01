import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/page2.dart';
//import 'package:flutter/src/material/material_state.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mydemo4'),
      ),
      body: Center(
        child:TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),

          onPressed: () {
            Navigator.of(context).pushNamed(Page2.id);
            },
          child: Text('Click', style:  TextStyle(color: Colors.white, fontSize: 26),),

        ),
      )
    );
  }
}
