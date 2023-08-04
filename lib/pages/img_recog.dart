import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home_page.dart';

class ImageRecognition extends StatefulWidget {
  const ImageRecognition({Key? key}) : super(key: key);

  @override
  State<ImageRecognition> createState() => _ImageRecognitionState();
}

class _ImageRecognitionState extends State<ImageRecognition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Recognition"),
      ),
    );
  }
}
