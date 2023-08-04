import 'package:applicationiator/pages/img_recog.dart';
import 'package:applicationiator/pages/spch_recog.dart';
import 'package:applicationiator/pages/text_recog.dart';
import 'package:flutter/material.dart';

//card 1
class MyCards0 extends StatefulWidget {
  const MyCards0({Key? key}) : super(key: key);

  @override
  State<MyCards0> createState() => MyCardsState();
}

class MyCardsState extends State<MyCards0> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 24, 24, 24),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Text(
                    "Speech Recognition",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            children: [
              Container(
                child: Text(
                  "Speech recognition, also known as automatic speech\nrecognition, or speech-to-text, is a capability which ena-\nbles a programto process human speech into a written\nformat.",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
              Container(
                  child: TextButton(
                child: Text("Go"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpeechRecognition()),
                  );
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 33, 107, 243),
                    padding: EdgeInsets.fromLTRB(30, 12, 30, 12)),
              ))
            ],
          ),
        ]),
      ),
      elevation: 7,
      shadowColor: Color.fromARGB(255, 134, 134, 134),
    );
  }
}

//card 2
class MyCards1 extends StatefulWidget {
  const MyCards1({Key? key}) : super(key: key);

  @override
  State<MyCards1> createState() => _MyCards1State();
}

class _MyCards1State extends State<MyCards1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 24, 24, 24),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Text(
                    "Text Recognition",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            children: [
              Container(
                child: Text(
                  "It takes a single click for systrans’s phrase transla-\ntor to display your selected text translation within\nseconds. ",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
              Container(
                  child: TextButton(
                child: Text("Go"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TranslatorDemo()),
                  );
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 33, 107, 243),
                    padding: EdgeInsets.fromLTRB(30, 12, 30, 12)),
              ))
            ],
          ),
        ]),
      ),
      elevation: 7,
      shadowColor: Color.fromARGB(255, 134, 134, 134),
    );
  }
}

// card 2

class Mycards2 extends StatefulWidget {
  const Mycards2({Key? key}) : super(key: key);

  @override
  State<Mycards2> createState() => _Mycards3State();
}

class _Mycards3State extends State<Mycards2> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 24, 24, 24),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Text(
                    "Image Recognition",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            children: [
              Container(
                child: Text(
                  "It is a technology that recognizes text within a digital\nimage. It is commonly used to recognize text in scan-\nned documents and images. ",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              Container(
                  child: TextButton(
                child: Text("Go"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImageRecognition()),
                  );
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 33, 107, 243),
                    padding: EdgeInsets.fromLTRB(30, 12, 30, 12)),
              ))
            ],
          ),
        ]),
      ),
      elevation: 7,
      shadowColor: Color.fromARGB(255, 134, 134, 134),
    );
  }
}
