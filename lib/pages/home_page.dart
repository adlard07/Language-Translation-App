import 'package:applicationiator/pages/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets/my_card.dart';
import 'settings.dart';
import 'profile.dart';
import 'home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(10, 90, 100, 40),
              child: Text(
                "Language\nRecognition",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 65,
                  fontWeight: FontWeight.w400,
                ),
              )),
          Container(
            child: Image.asset(
              'assets/images/brain.jpg',
              width: 500,
              height: 100,
            ),
          ),
          MyCards1(),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
          MyCards0(),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
          Mycards2(),
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Container(
              child: HomeButton(),
              padding: EdgeInsets.fromLTRB(20, 0, 0, 7),
            ),
            Spacer(),
            Container(
                child: ProfileButton(),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 7)),
            Spacer(),
            Container(
                child: SettingsBotton(),
                padding: EdgeInsets.fromLTRB(0, 0, 20, 7))
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
