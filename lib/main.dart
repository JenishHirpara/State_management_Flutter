import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './page1.dart';
import './page2.dart';
import './text_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TextProvider>(
      create: (ctx) => TextProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Page1(),
        routes: {
          Page1.routeName: (ctx) => const Page1(),
          Page2.routeName: (ctx) => const Page2(),
        },
      ),
    );
  }
}
