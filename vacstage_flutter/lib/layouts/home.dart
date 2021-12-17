import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/dropDown..dart';
import '../common/searchBar.dart';
import '../common/card.dart';

class Home extends StatelessWidget {
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
              ResCard(),
            ],
          ),
        )));
  }
}
