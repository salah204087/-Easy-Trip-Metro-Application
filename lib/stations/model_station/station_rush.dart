import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RushSatation extends StatefulWidget {

  final String path;
  const RushSatation({Key? key,  required this.path})
      : super(key: key);

  @override
  State<RushSatation> createState() => _RushSatationState();
}

class _RushSatationState extends State<RushSatation> {
  final _database = FirebaseDatabase.instance.ref();

  int result = 0;

  Future<void> fetchData() async {
    final snapshot = await _database.child(widget.path).get();
    if (snapshot.exists) {
      setState(() {
        result=snapshot.value as int;

      });
    } else {
      //TODO:
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double percentage = (result / 2800)>1?1:result/2800;
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: LinearPercentIndicator(
        width: 350,
        animation: true,
        lineHeight: 20.0,
        animationDuration: 2500,
        percent: percentage,
        center: Text( '${(percentage * 100).toInt()}%'),
        linearStrokeCap: LinearStrokeCap.roundAll,
        barRadius: const Radius.circular(16),
        progressColor: Colors.amber,
      ),
    );
  }
}
