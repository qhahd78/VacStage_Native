import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/dropDown..dart';
import '../common/searchBar.dart';
import '../common/card.dart';
import './cards.dart';

class Home extends StatelessWidget {
  // final List<dynamic> test = [
  //   {
  //     'resName' : '맥도날드 두정 DT점',
  //     'address' : '충남 천안시 동남구 어쩌구',
  //     'waiting' : 7,
  //     'step' : 2,
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: SvgPicture.asset('assets/images/HomeLogo.svg'),
          centerTitle: true,
          leading: SvgPicture.asset(
            'assets/images/List.svg',
            width: 10,
            height: 10,
            fit: BoxFit.scaleDown,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              SearchBar(),
              Container(
                alignment: Alignment(-1.0, 1.0),
                child: DropDown(),
              ),
              Cards(),
              ResCard(resName: '맥도날드', address: '주소', step: '3', waiting: '2')
              // ListView(
              //   children: [
              //     Container(
              //       child:
              //       ResCard(resName: '맥도날드', address: '천안 어디', step: '3', waiting: '4'),
              //     ),
              //   ],
              // )
            ],
            //   ListView.builder(
            //     itemCount: test.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         height: 200,
            //         child: ResCard(
            //           resName: test[index].resName,
            //           address: test[index].address,
            //           waiting: test[index].waiting.toString(),
            //           step: test[index].step.toString(),
            //         ),
            //       );
            //     },
            //   )
            // ],
          ),
        )));
  }
}
