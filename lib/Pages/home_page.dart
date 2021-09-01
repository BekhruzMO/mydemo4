import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/page2.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? name1;
  int? age1;
  Future getMessage() async {
Map result= await    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        return new Page2(
          name: 'Flutter',
          age: 22,
        );
      },
    ));
if(result.containsKey('data1')&&result.containsKey('data2')) {
  setState(() {
    name1 = result['data1'];
    age1 = result['data2'];
  });
}
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
              'Name: $name1, age:$age1',
              style: TextStyle(color: Colors.amberAccent, fontSize: 32),
            ),
          ),
        ));
  }
}
