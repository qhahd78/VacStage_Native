import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 300,
        height: 50,
        child: TextButton(
          onPressed: () {},
          child: Text("로그인",
            style: TextStyle(fontSize: 22.0, fontFamily: 'Pretendard', fontWeight: FontWeight.w700),
          ),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: const Color(0xff256AF0),
          ),
        ),
      ),
    );
  }
}
