import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 100 ,fontWeight: FontWeight.w200),
            ),
            color: Colors.amber,
          )),
    );
  }
}
