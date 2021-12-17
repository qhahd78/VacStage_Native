import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final _values = ['서북구', '동남구'];
  var _selectedValue = '서북구';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
        // style: TextStyle(fontWeight: FontWeight.w700),
          value: _selectedValue,
          items: _values.map(
            (value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          style:TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          icon: 
            SvgPicture.asset('assets/images/ArrowDown.svg'),
        ),
      )
    );
  }
}
