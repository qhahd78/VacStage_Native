import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './common/input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 150,
          child: SvgPicture.asset('assets/images/MainLogo.svg'),
        ),
        Container(
          child: Column(
            children: [
              Input(text:"a"),
              Input(text:"a"),
            ],
          )
        )
      ],
    ));
  }
}
