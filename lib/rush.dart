import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:metro_app/user_profile/home_page__user_profile.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:intl/intl.dart';

List lineMaximum = [];

class RushHours extends StatelessWidget {
  const RushHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now().subtract(const Duration(days: 365));
    String date = DateFormat('yMd').format(now).replaceAll('/', '-');
    String hour = DateFormat('H').format(now);

    return Scaffold(
      body: Column(children: [
        Container(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Colors.deepOrangeAccent,
                    height: 140,
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Colors.red,
                  height: 120,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
        Container
          (
          child: Text("Line's data for: ${DateFormat.yMMM().format(DateTime.now())}" , textAlign: TextAlign.center, style: const TextStyle(fontSize: 28),),
        ),
        Container(
          child: Text("For the time slot of ${DateFormat('hh a').format(DateTime.now())}" , textAlign: TextAlign.center, style: const TextStyle(fontSize: 28),),
        ),
        Container(child: RushIndicator(title: 'Line 1', path: '$date/$hour-111',worst_case: 70200),),
        const SizedBox(height: 15,),
        Container(child: RushIndicator(title: 'Line 2', path: '$date/$hour-222',worst_case: 50400)),
        const SizedBox(height: 15,),
        Container(child: RushIndicator(title: 'Line 3', path: '$date/$hour-333',worst_case: 43200)),
      ]),
    );
  }
}

class RushIndicator extends StatefulWidget {
  final String title;
  final String path;
  final int worst_case;

  const RushIndicator(
      {Key? key,
      required this.title,
      required this.path,
      required this.worst_case})
      : super(key: key);

  @override
  State<RushIndicator> createState() => _RushIndicatorState();
}

class _RushIndicatorState extends State<RushIndicator> {
  final _database = FirebaseDatabase.instance.ref();

  int result = 0;

  Future<void> fetchData() async {
    final snapshot = await _database.child(widget.path).get();
    if (snapshot.exists) {
      setState(() {
        result = snapshot.value as int;
      });
    } else {
      // TODO:
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double percentage =
        (result / widget.worst_case) > 1 ? 1 : result / widget.worst_case;
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: CircularPercentIndicator(
        radius: 80.0,
        lineWidth: 13.0,
        animation: true,
        percent: percentage,
        center: Text(
          '${(percentage * 100).toInt()}%',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
        ),
        footer: Text(
          widget.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.deepOrange,
      ),
    );
  }
}
