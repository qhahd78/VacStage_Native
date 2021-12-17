import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Input extends StatefulWidget {
  // parameter (input placeholder, icon)전달
  Input({@required this.text, @required this.pic, @required this.type});
  final text;
  final pic;
  final type;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  // 컨트롤러 생성
  final inputController = TextEditingController();

  // 위젯이 사라질 때 controller 도 dispose
  @override
  void dispose() {
    inputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // input 감싸는 box
        width: 300,
        height: 45,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
        ),
        child: Row(
          children: [
            // icon
            Container(
              child: SvgPicture.asset(widget.pic),
            ),
            // input box
            Container(
                width: 250,
                padding: EdgeInsets.only(left: 10.0),
                child: TextField(
                  controller: inputController,
                  obscureText: widget.type,
                  onChanged: (text) {
                    print(text);
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.text,
                    border: InputBorder.none,
                  ),
                )
              ),
          ],
        )
      );
  }
}
