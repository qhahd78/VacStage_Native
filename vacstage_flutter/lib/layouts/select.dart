import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Select extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text("지역을 선택해주세요.",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.0)
                ),
              ), 
              Container (
                  child: SvgPicture.asset('assets/images/Select.svg'),
              )
            ],
          )
      )
    );
  }
}