import 'package:app34/bloc.dart';
import 'package:flutter/material.dart';

class BlocInherited extends InheritedWidget {
  final BlocController bloc;
  final Widget child;

  BlocInherited({Key key, this.child, this.bloc})
      : super(key: key, child: child);

  static of(BuildContext context) {
     return context.inheritFromWidgetOfExactType(BlocInherited);
  }   

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
