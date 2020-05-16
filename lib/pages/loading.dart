import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

 @override
  void initState() {

    super.initState();
//    Navigator.pushNamed(context, '/signIn');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SpinKitWave(
          color: Colors.teal,
          size: 100.0,
        ),
      ),

    );
  }
}
