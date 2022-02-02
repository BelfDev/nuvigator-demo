import 'package:flutter/material.dart';
import 'package:nuvigator_demo/pages/home_page.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuvigator Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}
