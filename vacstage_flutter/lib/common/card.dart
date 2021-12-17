import 'package:flutter/material.dart';

class ResCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.black))
      ),
      child: Row(
        children: [
          Container(
            child: Image(image: AssetImage('assets/images/Test.jpg'), width: 100,
            ),
          ), 
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text('식당 이름'), 
                      Text('백신 태그')
                    ],
                  ),
                ),
                Container(
                  child: Text("식당 상세 주소"),
                ), 
                Container(
                  child: Text("7팀 대기중 "),
                ), 
                Container(
                  child: Text("버튼"),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}