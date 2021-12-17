import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Select extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text("지역을 선택해주세요.",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.0)
                ),
              ), 
              Container (
                  child: SvgPicture.asset('assets/images/Select.svg'),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text('서북구', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28.0),), 
                          Text('58%', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22.0),),
                        ],
                      )
                    ), 
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          Text('동남구', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28.0),), 
                          Text('60%', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22.0),),
                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          )
      )
    );
  }
}