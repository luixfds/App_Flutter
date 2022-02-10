import 'package:flutter/material.dart';

import 'casa.dart';

void main (){
  runApp(app2());
}
class app2 extends StatefulWidget {
  const app2({Key? key}) : super(key: key);

  @override
  _app2State createState() => _app2State();
}

class _app2State extends State<app2> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: casa(),
    );
  }
}
