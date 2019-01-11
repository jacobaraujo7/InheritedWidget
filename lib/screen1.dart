import 'package:app34/BlocInherited.dart';
import 'package:app34/bloc.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  @override
  _Scree1State createState() => _Scree1State();
}

class _Scree1State extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    
    BlocInherited widget = BlocInherited.of(context);
    BlocController bloc = widget.bloc;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 1"),
      ),
      body: Column(
        children: <Widget>[
          Form(
            key: bloc.keyForm,
            child: TextFormField(
              validator: (text) {
                if (text.isEmpty) {
                  return "Esse campo nao pode ser vazio";
                }
              },
              onSaved: (text) {
                bloc.text = text;
              },
            ),
          ),
          RaisedButton(
            child: Text("Passar para texto"),
            onPressed: () {
              bloc.onPressed(context);
            },
          ),
        ],
      ),
    );
  }
}
