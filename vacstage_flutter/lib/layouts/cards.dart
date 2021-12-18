import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Data> fetchData() async {
  var url = Uri.parse('http://52.78.74.152/account/restaurant/1/?format=json');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body.toString());
    return Data.fromJson(json.decode(response.body.toString()));
  } else {
    throw Exception('실패');
  }
}

class Data {
  final int id;
  final String name;
  final String phoneNumber;
  final String district;
  final int waitingAvg;
  final int totalSeat;
  final int remainSeat;
  final String menu;
  final String restaurantPhoto;
  final String vaccineCondition;

  Data(
      {this.id,
      this.name,
      this.phoneNumber,
      this.district,
      this.waitingAvg,
      this.remainSeat,
      this.totalSeat,
      this.menu,
      this.restaurantPhoto,
      this.vaccineCondition});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      name: json['name'],
      phoneNumber: json['phone_number'] as String,
      district: json['district'],
      waitingAvg: json['waiting_avg'],
      remainSeat: json['remain_seat'],
      totalSeat: json['total_seat'],
      menu: json['menu'],
      restaurantPhoto: json['restaurant_photo'],
      vaccineCondition: json['vaccine_condition'],
    );
  }
}

class Cards extends StatefulWidget {
  Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  Future<Data> data;
  @override
  void initState() {
    super.initState();
    data = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder<Data>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.name);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
