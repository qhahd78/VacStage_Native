import 'package:flutter/material.dart';

class ResCard extends StatelessWidget {
  ResCard(
      {@required this.resName,
      @required this.address,
      @required this.step,
      @required this.waiting});

  final resName;
  final address;
  final step;
  final waiting;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.black12))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/images/Test.jpg'),
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
              width: 200,
              height: 100,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          '$resName',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Text('$step')
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3),
                    alignment: Alignment(-1.0, 1.0),
                    child: Text(
                      '$address',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 1.0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                              padding:
                                  EdgeInsets.only(right: 3, top: 5, bottom: 5),
                              child: Text(
                                '$waiting팀',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff6F62E3)),
                              )),
                          Text('대기중'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 1.0),
                    child: Text("버튼"),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
