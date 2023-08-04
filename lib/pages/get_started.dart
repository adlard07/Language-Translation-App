import 'package:applicationiator/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          ),
          Container(
            child: Image.asset('assets/images/globe.jpg'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
          ),
          Container(
            child: Container(
              child: Text(
                "Translation of local language into your known language",
                textScaleFactor: 1.6,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
            ),
          ),
          Container(
            child: Text(
              "In our application you can translate all yor texts in living local languages",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.grey),
            ),
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
          ),
          Container(
            child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(80.0)),
                child: Text(
                  "Get Started",
                  textScaleFactor: 1.7,
                ),
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                color: Color.fromARGB(255, 236, 236, 236)),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
          ),
          Container(
            child: Text(
              "Version: 1.0",
              textScaleFactor: 1.0,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ])));
  }
}
