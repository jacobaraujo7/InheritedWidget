import 'package:app34/BlocInherited.dart';
import 'package:app34/bloc.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {



  const Tela2({Key key}) : super(key: key);

  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {

    BlocInherited inheritedWidget =
        context.inheritFromWidgetOfExactType(BlocInherited);
    BlocController bloc = inheritedWidget.bloc;

    return Scaffold(
      appBar: AppBar(title: Text("Tela 2"),),
      body: Center(
        child: Text(bloc.text),
      ),
    );
  }
}