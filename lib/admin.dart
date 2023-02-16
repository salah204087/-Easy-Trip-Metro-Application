import 'package:flutter/material.dart';
import 'package:metro_app/mainscreen_notificate.dart';
import 'package:metro_app/user_profile/home_page__user_profile.dart';
import 'package:metro_app/view_analysis/multiselectdropdown_screen_analysis.dart';




class admin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
            child: Column(
              children: <Widget>[
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
                SizedBox(height: 150,),
                FloatingActionButton.extended(

                  label: const Text('Analysis data'), // <-- Text
                  backgroundColor: Colors.red,
                  icon: const Icon( // <-- Icon
                    Icons.add_chart,
                    size: 24.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => analysis()),
                    );
                  },
                ),
                const SizedBox(height: 20),
                FloatingActionButton.extended(
                  label: const Text('operation status'), // <-- Text
                  backgroundColor: Colors.red,
                  icon: const Icon( // <-- Icon
                    Icons.notification_important,
                    size: 24.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainScreen_notificate()),
                    );
                  },
                ),
              ],)
        )
    );
  }
}