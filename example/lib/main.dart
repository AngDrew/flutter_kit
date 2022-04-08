import 'package:flutter/material.dart';
import 'package:my_awesome_template/my_awesome_template.dart';

import 'example_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: materialColorGen(Colors.red),
        textTheme: R.styles.textTheme,
      ),
      home: const ExampleView(),
    );
  }
}
