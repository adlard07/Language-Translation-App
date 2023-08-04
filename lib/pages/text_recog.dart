import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:translator/translator.dart';

final translator = GoogleTranslator();
String? _dropDownvalue;
String? translated_text;
TextEditingController myController = TextEditingController();

class TranslatorDemo extends StatefulWidget {
  const TranslatorDemo({Key? key}) : super(key: key);

  @override
  State<TranslatorDemo> createState() => _TranslatorDemoState();
}

class _TranslatorDemoState extends State<TranslatorDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              toolbarHeight: 150,
              backgroundColor: Colors.black,
              title: Text("Text Recognition", style: TextStyle(fontSize: 50)),
            ),
            body: Container(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: myController,
                        decoration: InputDecoration(
                          hintText: 'Enter text',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: _dropDownvalue == null
                              ? Text(
                                  'Select language',
                                  style: TextStyle(color: Colors.white),
                                )
                              : Text(_dropDownvalue!,
                                  style: TextStyle(color: Colors.white)),
                          items: <String>[
                            'English',
                            'Hindi',
                            'Marathi',
                            'Spanish',
                            'French'
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(child: Text(value)),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _dropDownvalue = newValue;
                            });

                            if (_dropDownvalue == 'English') {
                              translate_text('en');
                            } else if (_dropDownvalue == 'Spanish') {
                              translate_text('es');
                            } else if (_dropDownvalue == 'French') {
                              translate_text('fr');
                            } else if (_dropDownvalue == 'Hindi') {
                              translate_text('hi');
                            } else if (_dropDownvalue == 'Marathi') {
                              translate_text('mr');
                            }
                          },
                        )),
                    Padding(padding: EdgeInsets.fromLTRB(0, 36, 0, 0)),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: translated_text != null
                            ? Text(translated_text!,
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white))
                            : Text('')),
                  ],
                ))));
  }

  void translate_text(String locale) {
    translator.translate(myController.text, to: locale).then((value) {
      setState(() {
        translated_text = value.text;
      });
    });
  }
}
