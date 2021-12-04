import 'package:flutter/material.dart';
import './page2.dart';
import 'text_provider.dart';

import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  static const routeName = 'page1';

  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var text = Provider.of<TextProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: text.changeText,
              child: const Text('Change Text'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: const Text('Goto Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
