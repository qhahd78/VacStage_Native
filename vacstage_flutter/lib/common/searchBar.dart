import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, 
      height: 35, 
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1, 
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        // 세로 가운데 정렬
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 280,
            child: TextField(
              style: TextStyle(
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                hintText: '식당이름을 검색해보세요.',
                border: InputBorder.none,
              ),
            )
          ),
          Container(
            child: SvgPicture.asset('assets/images/Search.svg'),
          )
        ],
      )
    );
  }
}