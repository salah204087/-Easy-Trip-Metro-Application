
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metro_app/floating_button/expandable_fab.dart';
import 'package:metro_app/lines_analysis/comparison/compare1_2.dart';
import 'package:metro_app/lines_analysis/comparison/compare1_3.dart';
import 'package:metro_app/lines_analysis/comparison/compare2_3.dart';
import 'package:metro_app/lines_analysis/line1.dart';


class compare1_2_3 extends StatefulWidget {
  final String from;
  final String to;
  final int totaldays;
  compare1_2_3({Key? key, required this.from, required this.to, required this.totaldays}) : super(key: key);

  @override
  _compare1_2_3 createState() => _compare1_2_3();
}

class _compare1_2_3 extends State<compare1_2_3> {
  late List<charts.Series<Pollution, String>> _seriesData;
  late List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var line1 = [
      Pollution(1980, '2015', 339830508),
      Pollution(1980, '2016', 300087440),
      Pollution(1980, '2017', 500512015),
      Pollution(1980, '2018', 432105841),
      Pollution(1980, '2019', 301597820),
      Pollution(1980, '2020', 300018410),
      Pollution(1980, '2021', 632156920),
    ];
    var line2 = [
      Pollution(1985, '2015', 265103256),
      Pollution(1980, '2016', 300069841),
      Pollution(1985, '2017', 423611232),
      Pollution(1980, '2018', 321566212),
      Pollution(1980, '2019', 321456698),
      Pollution(1980, '2020', 269875210),
      Pollution(1980, '2021', 423654221),
    ];
    var line3 = [
      Pollution(1985, '2015', 212369841),
      Pollution(1980, '2016', 231569452),
      Pollution(1985, '2017', 265483215),
      Pollution(1980, '2018', 231698425),
      Pollution(1980, '2019', 264236841),
      Pollution(1980, '2020', 123651125),
      Pollution(1980, '2021', 365126984),
    ];
    var linesline1 = [
      Sales(0, 339830508),
      Sales(1, 300087440),
      Sales(2, 500512015),
      Sales(3, 432105841),
      Sales(4, 301597820),
      Sales(5, 300018410),
      Sales(6, 632156920),
    ];
    var linesline2 = [
      Sales(0, 265103256),
      Sales(1, 300069841),
      Sales(2, 423611232),
      Sales(3, 321566212),
      Sales(4, 321456698),
      Sales(5, 269875210),
      Sales(6, 423654221),
    ];

    var linesline3 = [
      Sales( 0, 212369841),
      Sales( 1, 231569452),
      Sales( 2, 265483215),
      Sales( 3, 231698425),
      Sales( 4, 264236841),
      Sales( 5, 123651125),
      Sales( 6, 365126984),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: line1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: line2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: line3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xffff9900)),
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(const Color(0xff990099)),
        id: 'Air Pollution',
        data: linesline1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(const Color(0xff109618)),
        id: 'Air Pollution',
        data: linesline2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(const Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesline3,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = <charts.Series<Pollution, String>>[];
    _seriesLineData = <charts.Series<Sales, int>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            //backgroundColor: Color(0xff308e1c),
            bottom: const TabBar(
              indicatorColor: const Color(0xff9962D0),
              tabs: [
                 Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon:  Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: const Text('Comparison between Line 1,Line 2 and Line 3'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'the difference passenger between lines',
                          style: const TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              width: 9.71,
                              height: 9.71,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text("Line 1",
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 9.71,
                              height: 9.71,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text("Line 2",
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 9.71,
                              height: 9.71,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Line 3",
                            ),

                          ],
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: const Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'The rate of passengers during those years',
                          style: const TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 9.71,
                              height: 9.71,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text("Line 1",
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 9.71,
                              height: 9.71,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text("Line 2",
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 9.71,
                              height: 9.71,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Line 3",
                            ),

                          ],
                        ),
                        Expanded(
                          child: charts.LineChart(_seriesLineData,
                              defaultRenderer: charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: const Duration(seconds: 5),
                              behaviors: [
                                charts.ChartTitle('Years',
                                    behaviorPosition:
                                        charts.BehaviorPosition.bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                charts.ChartTitle('Rates',
                                    behaviorPosition:
                                        charts.BehaviorPosition.start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                charts.ChartTitle(
                                  'Lines',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: ExpandableFab(
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
                      MaterialPageRoute(builder: (context) =>  line1(from:widget.from,to:widget.to,totaldays: widget.totaldays, line: 2,)),
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
                      MaterialPageRoute(builder: (context) =>  line1(from:widget.from,to:widget.to,totaldays: widget.totaldays, line:2)),
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
                      MaterialPageRoute(builder: (context) =>  compare2_3(from:widget.from,to:widget.to,totaldays: widget.totaldays)),
                    );
                  },
                  label: const Text('2,3'),
                  backgroundColor: Colors.blue,

                ),
              ]),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
