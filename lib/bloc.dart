
import 'package:app34/screen2.dart';
import 'package:flutter/material.dart';

class BlocController {

  String text = "";

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();


  onPressed(context){
    if(keyForm.currentState.validate()){
      keyForm.currentState.save();
      print(text);
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
        return Tela2();
      }


      ));

    }
      
  }
  

}