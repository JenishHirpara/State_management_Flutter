import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './text_provider.dart';

class Page2 extends StatelessWidget {
  static const routeName = 'page2';
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = Provider.of<TextProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body: Center(
          child: Text(
        text.text[text.index],
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
