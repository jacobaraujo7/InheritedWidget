import 'package:app34/BlocInherited.dart';
import 'package:app34/bloc.dart';
import 'package:app34/screen1.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocInherited(
      bloc: BlocController(),
      child: MaterialApp(
        home: Tela1(),
      ),
    );
  }
}
