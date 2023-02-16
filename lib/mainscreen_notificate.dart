import 'package:flutter/material.dart';
import 'package:metro_app/notificate.dart';
import 'package:metro_app/user_profile/home_page__user_profile.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class MainScreen_notificate extends StatefulWidget {
  const MainScreen_notificate({Key? key}) : super(key: key);

  @override
  _MainScreennotificateState createState() => _MainScreennotificateState();
}

class _MainScreennotificateState extends State<MainScreen_notificate> {
  @override
  void initState() {
    super.initState();

    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
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
          SizedBox(height: 20,),
          Text('Send Notification',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
          SizedBox(height: 150,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  NotificationService().cancelAllNotifications();
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "Cancel All Notifications",
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  NotificationService().showNotification(1, "Metro Application", "Dear Metro riders,Unfortunately, we want to go ahead and inform you that the Metro systems are currently down duo to technical error, we will be back after 20 minutes inshallah.Thank you", 2);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                        "Show Notification"
                    ),
                  ),
                ),
              ),
            ],
          ),
      ]
      ),
    );
  }
}
