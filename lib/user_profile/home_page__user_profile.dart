import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:metro_app/user_profile/card_custom_user_profile.dart';
import 'package:metro_app/user_profile/list_tile_custom__user_profile.dart';
import 'package:metro_app/user_profile/themes_user_profile.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class usage extends StatefulWidget {
  @override
  user_used createState() => user_used();
}

class user_used extends State<usage> {
  String _scanBarcode = 'Unknown';
  int noOfTicketsRemain = 40;
  int noOfTicketsUsed = 260;


  @override
  void initState() {
    super.initState();
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    if (noOfTicketsRemain>0){
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR).whenComplete(() {
            setState(() {
              noOfTicketsRemain -=1;
              noOfTicketsUsed +=1;
            });
          });
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
//barcode scanner flutter ant
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("You have no remaining tickets"),
    ));
    }
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      color: Colors.deepOrangeAccent,
                      height: 170,
                    ),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Colors.red,
                    height: 150,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1500,
              radius: 80,
              lineWidth: 15,
              percent: noOfTicketsRemain / 300,
              progressColor: Colors.red,
              backgroundColor: Colors.black26,
              circularStrokeCap: CircularStrokeCap.round,
              center: new Text(
                "${noOfTicketsRemain.toString()}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 69, 0, .8)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CardCustom(
                width: size.width / 2 - 23,
                height: 88.9,
                mLeft: 10,
                mRight: 0,
                child: ListTileCustom(
                  bgColor: purpleLight,
                  pathIcon: "total.svg",
                  title: "Total Trip",
                  subTitle: "300",
                ),
              ),
              CardCustom(
                width: size.width / 2 - 23,
                height: 88.9,
                mLeft: 25,
                mRight: 0,
                child: ListTileCustom(
                  bgColor: greenLight,
                  pathIcon: "remain.svg",
                  title: "Remain",
                  subTitle: noOfTicketsRemain.toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CardCustom(
                width: size.width / 2 - 23,
                height: 88.9,
                mLeft: 120,
                mRight: 0,
                child: ListTileCustom(
                  bgColor: greenLight,
                  pathIcon: "used.svg",
                  title: "used",
                  subTitle: noOfTicketsUsed.toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CardCustom(
            width:11000 ,
            height: 88.9,
            mLeft: 20,
            mRight: 20,
            child: new LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 25.0,
              animationDuration: 2500,
              percent: 0.65,
              center: Text("62 Days"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              barRadius: const Radius.circular(16),
              progressColor: Colors.deepOrangeAccent,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => scanQR(),
        label: const Text('QR Scan'),
        icon: const Icon(Icons.camera_alt),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}

//Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom
    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
