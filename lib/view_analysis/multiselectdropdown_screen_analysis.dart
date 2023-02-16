import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:metro_app/lines_analysis/line1.dart';
import 'package:metro_app/model_analysis/Lines_data_model_analysis.dart';
import 'package:metro_app/user_profile/home_page__user_profile.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:date_time_picker/date_time_picker.dart';
import '../controller_analysis/app_data_controller_analysis.dart';
import '../model_analysis/Lines_data_model_analysis.dart';

class analysis extends StatefulWidget {
  @override
  analysisstate createState() => analysisstate();
}

class analysisstate extends State<analysis> {
  final AppDataController_analysis controller =
  Get.put(AppDataController_analysis());
  int selectedLine = 0;
  var date1;
  var date2;

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getSubjectData();
    });
    return Scaffold(
      body:Column(children: [
      Container(
      child: Stack(
      children: [
        Opacity(
        opacity: 0.5,
        child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.deepOrangeAccent,
            height: 150,
          ),
        ),
      ),
      ClipPath(
        clipper: WaveClipper(),
        child: Container(
          color: Colors.red,
          height: 130,
          alignment: Alignment.center,
        ),
      ),
      ],
    ),
    ),
    Text('Analysis data',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
    SizedBox(height: 20,),
      Container(
        child: Column(
          children: [
            Card(
              color: Colors.white70,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DropdownButton<int>(
                      isExpanded: true,
                      value: selectedLine,
                      onChanged: (val) {
                        selectedLine = val!;
                        setState(() {});
                      },
                      items: [
                        DropdownMenuItem(
                            child: Text(
                              'Line 1',
                              style: TextStyle(color: Colors.black),
                            ),
                            value: 0),
                        DropdownMenuItem(
                          child: Text('Line 2',
                              style: TextStyle(color: Colors.black)),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Line 3',
                              style: TextStyle(color: Colors.black)),
                          value: 2,
                        ),
                      ],
                    ),
                    DateTimePicker(
                      initialValue: '',
                      firstDate: DateTime(2016),
                      lastDate: DateTime.now(),
                      style: TextStyle(color: Colors.black),
                      dateLabelText: 'From',
                      onChanged: (val) => date1 = DateTime.parse(val)
                          .subtract(const Duration(days: 365)),
                    ),
                    DateTimePicker(
                      initialValue: '',
                      firstDate: DateTime(2016),
                      lastDate: DateTime.now(),
                      style: TextStyle(color: Colors.black),
                      dateLabelText: 'To',
                      onChanged: (val) => date2 = DateTime.parse(val)
                          .subtract(const Duration(days: 365)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            FloatingActionButton.extended(
              label: const Text('Analysis data'), // <-- Text
              backgroundColor: Colors.red,
              icon: const Icon(
                // <-- Icon
                Icons.add_chart,
                size: 24.0,
              ),
              onPressed: () {
                if (date1 != null && date2 != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => line1(
                          line: selectedLine,
                          from: DateFormat('yMd')
                              .format(date1)
                              .replaceAll('/', '-'),
                          to: DateFormat('yMd')
                              .format(date2)
                              .replaceAll('/', '-'),
                          totaldays: (date2.difference(date1).inHours / 24)
                              .round().abs(),
                        )),
                  );
                } else {
                  print(date1);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Please select your date range"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
            ),
          ],
        ),
      ),
    ]));
  }
}
