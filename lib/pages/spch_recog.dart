import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home_page.dart';

class SpeechRecognition extends StatefulWidget {
  const SpeechRecognition({Key? key}) : super(key: key);

  @override
  State<SpeechRecognition> createState() => _SpeechRecognitionState();
}

class _SpeechRecognitionState extends State<SpeechRecognition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speech Recognition"),
      ),
    );
  }
}
