import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_app/components_analysis/card_custom.dart';
import 'package:metro_app/components_analysis/circle_progress.dart';
import 'package:metro_app/components_analysis/list_tile_custom.dart';
import 'package:metro_app/floating_button/expandable_fab.dart';
import 'package:metro_app/lines_analysis/comparison/compare1_2.dart';
import 'package:metro_app/lines_analysis/comparison/compare1_2_3.dart';
import 'package:metro_app/lines_analysis/comparison/compare1_3.dart';
import 'package:metro_app/lines_analysis/comparison/compare2_3.dart';
import 'package:metro_app/themes_analysis/themes.dart';
import 'dart:math';



class line1 extends StatefulWidget {
  final String from;
  final String to;
  final int totaldays;
  final int line;

  const line1({super.key, required this.from, required this.to, required this.totaldays, required this.line});
  @override
  line1_state createState() => line1_state();
}

class line1_state extends State<line1> {
  final _database = FirebaseDatabase.instance.ref();
  int fromValue = 1;
  int toValue = 1;


  Future<void> fetchData(from, to) async {
    print(widget.from);
    print(widget.to);
    final fromData = await _database.child(from+'/16-${widget.line+1}${widget.line+1}${widget.line+1}').get();
    final toData = await _database.child(to+'/16-${widget.line+1}${widget.line+1}${widget.line+1}').get();
    print(fromData.value);
    print(toData.value);


    if (fromData.exists && toData.exists) {
      setState(() {
        print('found');
        fromValue = fromData.value as int;
        toValue = toData.value as int;
      });
    } else {
      // TODO:
      print('nooo');

    }
  }

  @override
  void initState() {
    fetchData(widget.from, widget.to);
    super.initState();
  }

  @override
  List<List<int>> lines=[[1355615,2000000,600000],[1255615,2000000,690000],[124415,1200000,500000]];
  List <double> dates = [];
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var percentage = ((((((toValue - fromValue)/fromValue)*1000).roundToDouble()/100)));
    print(fromValue);
    dates.clear();
    for (var i = 0; i < widget.totaldays+1; i++)
    {
      dates.add(30000.0 + Random().nextInt(50000 - 45000));
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: widget.line == 0?SvgPicture.asset(
          "assets/icons/line1.svg",
          width: 29.15,
          height: 30,
        ):widget.line == 1?SvgPicture.asset(
          "assets/icons/line2.svg",
          width: 29.15,
          height: 30,
        ):SvgPicture.asset(
          "assets/icons/line3.svg",
          width: 29.15,
          height: 30,
        ),

      ),
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width / 2 - 20,
                        child: Column(
                          children: [
                            CustomPaint(
                              foregroundPainter: CircleProgress((toValue/lines[widget.line][0])),
                              child: SizedBox(
                                width: 107,
                                height: 107,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      toValue.toString(),
                                      style: textBold,
                                    ),
                                    Text(
                                      "REACH",
                                      style: textSemiBold,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(percentage.isNegative?Icons.arrow_downward_outlined:
                                        Icons.arrow_upward_outlined,
                                          color: percentage.isNegative?red:green,
                                          size: 14,
                                        ),
                                        Text(
                                          percentage.toString()+'%',
                                          style: textSemiBold,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Rate Passengers",
                              style: textBold3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 2 - 20,
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/home.png"))),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 6,
                  color: sparatorColor,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Analyze Data",
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: purple1),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: " For this interval time",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]),
                      ),
                      const SizedBox( height: 20,),
                      Row(
                        children: [
                          CardCustom(
                            width: size.width/ 2 - 23,
                            height: 88.9,
                            mLeft: 0,
                            mRight: 3,
                            child: ListTileCustom(
                              bgColor: purpleLight,
                              pathIcon: "passenger.svg",
                              title: "total passengers",
                              subTitle:  "${(((((lines[widget.line][0] * (Random((widget.from+widget.to).hashCode).nextDouble() * 0.1)+ 0.9)*100))*(widget.totaldays+1)).roundToDouble()/100).round()}",
                            ),
                          ),
                          CardCustom(
                            width: size.width/ 2 - 23,
                            height: 88.9,
                            mLeft: 3,
                            mRight: 0,
                            child: ListTileCustom(
                              bgColor: greenLight,
                              pathIcon: "max.svg",
                              title: "Maximum",
                              subTitle: "${(((((lines[widget.line][1] * (Random((widget.from+widget.to).hashCode).nextDouble() * 0.1)+ 0.9)*100))).roundToDouble()/100).round()}",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CardCustom(
                            width: size.width/ 2 - 23,
                            height: 88.9,
                            mLeft: 0,
                            mRight: 3,
                            child: ListTileCustom(
                              bgColor: yellowLight,
                              pathIcon: "min.svg",
                              title: "Minimum",
                              subTitle: "${(((((lines[widget.line][2] * (Random((widget.from+widget.to).hashCode).nextDouble() * 0.1)+ 0.9)*100))).roundToDouble()/100).round()}",
                            ),
                          ),
                          CardCustom(
                            width: size.width/ 2 - 23,
                            height: 88.9,
                            mLeft: 3,
                            mRight: 0,
                            child: ListTileCustom(
                              bgColor: blueLight,
                              pathIcon: "average.svg",
                              title: "Average",
                              subTitle: "${widget.totaldays == 0?(((((lines[widget.line][0] * (Random((widget.from+widget.to).hashCode).nextDouble() * 0.1)+ 0.9)*100))).roundToDouble()/100).round():(((lines[widget.line][0] * (Random((widget.from+widget.to).hashCode).nextDouble() * 0.1)+ 0.9)*100).roundToDouble()/100)}",
                            ),
                          ),
                        ],
                      ),
                      CardCustom(
                          mLeft: 0,
                          mRight: 0,
                          width: size.width - 40,
                          height: 211,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 9.71,
                                      height: 9.71,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: purple2
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("changes data in interval time",
                                      style: label,
                                    ),

                                  ],
                                ),
                              ),

                              Container(
                                child: Sparkline(
                                  data:dates,
                                  lineWidth: 6.0,
                                  lineGradient: new LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.purple, Colors.purpleAccent],
                                  ),
                                ),
                                width: size.width - 40,
                                height: 144.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),

                                  ),


                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
      ExpandableFab(
          distance: 300,
          children: [
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  line1(from:widget.from,to:widget.to,totaldays: widget.totaldays, line: 0,)),
                );
              },
              label: const Text('1'),
              backgroundColor: Colors.blue,

            ),
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  line1(from:widget.from,to:widget.to,totaldays: widget.totaldays, line: 1,)),
                );
              },
              label: const Text('2'),
              backgroundColor: Colors.blue,

            ),
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  line1(from:widget.from,to:widget.to,totaldays: widget.totaldays, line: 2,)),
                );
              },
              label: const Text('3'),
              backgroundColor: Colors.blue,

            ),
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  compare1_2_3(from:widget.from,to:widget.to,totaldays: widget.totaldays)),
                );
              },
              label: const Text('1,2,3'),
              backgroundColor: Colors.blue,

            ),
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  compare1_3(from:widget.from,to:widget.to,totaldays: widget.totaldays)),
                );
              },
              label: const Text('1,3'),
              backgroundColor: Colors.blue,

            ),
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  compare1_2(from:widget.from,to:widget.to,totaldays: widget.totaldays)),
                );
              },
              label: const Text('1,2'),
              backgroundColor: Colors.blue,

            ),
            FloatingActionButton.extended(
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  compare2_3(from:widget.from,to:widget.to,totaldays: widget.totaldays)),
                );
              },
              label: const Text('2,3'),
              backgroundColor: Colors.blue,

            ),


          ]
      ),

    );
  }
}





