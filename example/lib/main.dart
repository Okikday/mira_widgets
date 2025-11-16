import 'package:flutter/material.dart';
import 'package:mira_widgets/mira_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Mira widgets makes development much easier.').p16.background(Colors.blue).rounded(12).centerAlign,
      ),
    );
  }
}
