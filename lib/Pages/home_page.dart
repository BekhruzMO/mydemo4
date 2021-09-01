import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/page2.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future getMessage() async {
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        return new Page2(
          name: 'Flutter',
          age: 22,
        );
      },
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Home Page',
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
        body: Center(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              getMessage();
            },
            child: Text(
              'ButtonTwo',
              style: TextStyle(color: Colors.amberAccent, fontSize: 32),
            ),
          ),
        ));
  }
}
