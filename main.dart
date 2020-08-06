import 'package:flutter/material.dart';
import 'mydir/background.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'mydir/LocalAudioPlayer.dart';

main(){
  runApp(MyReload());
}

class MyReload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //FlutterStatusbarcolor.setStatusBarColor(Colors.red);
    return MyApp();
  }
}