import 'package:flutter/material.dart';
import 'package:simple_chat_app_with_websockets/src/provider/home_provider.dart';

import 'widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zikey Chat app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeProvider(child: MyHomePage()),
    );
  }
}
