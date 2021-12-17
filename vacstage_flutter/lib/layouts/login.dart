import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    Input(text:"아이디를 입력하세요.", pic: 'assets/images/Id.svg', type: false),
                    Input(text:"비밀번호를 입력하세요.", pic: 'assets/images/Pw.svg', type: true),
                  ],
                )
              ),
              Container(
                child: Button(text: '로그인', route: '/home'),
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
