import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vacstage_flutter/common/button.dart';
import '../common/input.dart';
import '../common/button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          // height: 150,
          child: SvgPicture.asset('assets/images/MainLogo.svg'),
        ),
        Container(
          margin: EdgeInsets.only(top: 50, bottom: 10),
          child: Column(
            children: [
              Input(text:"a"),
              Input(text:"a"),
            ],
          )
        ),
        Container(
          child: Button(),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text("아직 계정이 없으신가요?", 
            style: TextStyle(color: const Color(0xff256AF0)
            ),
          ),
        ),
      ],
    ),
    )
    ) 
    );
  }
}
