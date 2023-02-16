import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class map extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              
              PhotoView(
        imageProvider: AssetImage("assets/images/map.jpg"),
      ),
      Container(
                height: 80,
                width: double.infinity,
                color: Colors.black.withOpacity(0.4),
                child: Center(child: Text('Metro Map', textAlign: TextAlign.center, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white
                ),)),
              ),
            ],
          ),),
    );
  }
}