import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:metro_app/stations/model_station/station_rush.dart';
import 'package:url_launcher/url_launcher.dart';

class Station {
  String title;
  String subTitle;
  String img;
  double star;
  Widget percent;
  final Widget url;

  ///
  Station({
    required this.title,
    required this.subTitle,
    required this.img,
    required this.star,
    required this.percent,
    required this.url,
  });
}

DateTime now = DateTime.now().subtract(const Duration(days: 365));
String date = DateFormat('yMd').format(now).replaceAll('/', '-');
String hour = DateFormat('H').format(now);

List<Station> lines = [
  Station(
    title: "Helwan Station",
    subTitle:
        ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url: Center(
        child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[0]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent:RushSatation( path: '$date/$hour-1')
  ),
  Station(
    title: "Ain Helwan Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[1]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.8,
    percent: RushSatation( path: '$date/$hour-2'),
  ),
  Station(
    title: "Helwan University Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[2]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent:RushSatation( path: '$date/$hour-3')
  ),
  Station(
    title: "Wadi Hof Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[3]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent: RushSatation( path: '$date/$hour-4')
  ),
  Station(
    title: "Hadayek Helwan Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[4]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.1,
    percent: RushSatation( path: '$date/$hour-5')
  ),
  Station(
    title: "EL Maasara Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[5]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.7,
    percent: RushSatation( path: '$date/$hour-6')
  ),
  Station(
    title: "Tora El-Asmant Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[6]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.2,
    percent: RushSatation( path: '$date/$hour-7')
  ),
  Station(
    title: "Kozzika Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[7]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.8,
    percent: RushSatation( path: '$date/$hour-8')
  ),
  Station(
    title: "Tora El-Balad Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[8]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.8,
    percent: RushSatation( path: '$date/$hour-9')
  ),
  Station(
    title: "Sakanat El-Maadi Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[9]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent: RushSatation( path: '$date/$hour-10')
  ),
  Station(
    title: "Maadi Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[10]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.0,
    percent: RushSatation( path: '$date/$hour-11')
  ),
  Station(
    title: "Hadayek El-Maadi Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[11]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.9,
    percent: RushSatation( path: '$date/$hour-12')
  ),
  Station(
    title: "Dar El-Salam Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[12]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.6,
    percent: RushSatation( path: '$date/$hour-13')
  ),
  Station(
    title: "El-Zahraa Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[13]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.8,
    percent: RushSatation( path: '$date/$hour-14')
  ),
  Station(
    title: "Mar Girgis Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[14]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.4,
    percent: RushSatation( path: '$date/$hour-15')
  ),
  Station(
    title: "El-Malek El-Saleh Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[15]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.8,
    percent: RushSatation( path: '$date/$hour-16')
  ),
  Station(
    title: "Al-Sayeda Zainab Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[16]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent: RushSatation( path: '$date/$hour-17')
  ),
  Station(
    title: "Saad Zaghloul Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[17]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.0,
    percent: RushSatation( path: '$date/$hour-18')
  ),
  Station(
    title: "Sadat Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[18]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.1,
    percent: RushSatation( path: '$date/$hour-19')
  ),
  Station(
    title: "Nasser Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[19]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.5,
    percent: RushSatation( path: '$date/$hour-20')
  ),
  Station(
    title: "Orabi Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[20]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.1,
    percent: RushSatation( path: '$date/$hour-21')
  ),
  Station(
    title: "Al-Shohadaa Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[21]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.0,
    percent:RushSatation( path: '$date/$hour-22')
  ),
  Station(
    title: "Ghamra Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[22]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.9,
    percent: RushSatation( path: '$date/$hour-23')
  ),
  Station(
    title: "El-Demerdash Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[23]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.7,
    percent: RushSatation( path: '$date/$hour-24')
  ),
  Station(
    title: "Manshiet El-Sadr Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[24]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent:RushSatation( path: '$date/$hour-25')
  ),
  Station(
    title: "Kobri El-Qobba Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[25]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.1,
    percent: RushSatation( path: '$date/$hour-26')
  ),
  Station(
    title: "Hammamat El-Qobba Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[26]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.0,
    percent: RushSatation( path: '$date/$hour-27')
  ),
  Station(
    title: "Saray El-Qobba Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[27]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.2,
    percent: RushSatation( path: '$date/$hour-28')
  ),
  Station(
    title: "Hadayeq El-Zaitoun Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[28]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 4.0,
    percent:RushSatation( path: '$date/$hour-29')
  ),
  Station(
    title: "Helmeyet El-Zaitoun Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[29]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.6,
    percent:RushSatation( path: '$date/$hour-30')
  ),
  Station(
    title: "El-Matareyya Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[30]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.9,
    percent: RushSatation( path: '$date/$hour-31')
  ),
  Station(
    title: "Ain Shams Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[31]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.8,
    percent: RushSatation( path: '$date/$hour-32')
  ),
  Station(
    title: "Ezbet El-Nakhl Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[32]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.7,
    percent:RushSatation( path: '$date/$hour-33')
  ),
  Station(
    title: "El-Marg Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[33]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.4,
    percent: RushSatation( path: '$date/$hour-34')
  ),
  Station(
    title: "New El-Marg Station",
    subTitle:
    ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
    url:Center(child: ElevatedButton(
      onPressed: () => _launchUrl1(_url1[34]),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.black,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(150, 20), //////// HERE
      ),
      child: Text('Location'),
    )),
    img: 'assets/images/metro.jpg',
    star: 3.4,
    percent:RushSatation( path: '$date/$hour-35')
  ),
  Station(
      title: "El-Mounib station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[0]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 3.7,
      percent: RushSatation( path: '$date/$hour-36')
  ),
  Station(
      title: "Sakiat Mekky station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[1]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 3.6,
      percent: RushSatation( path: '$date/$hour-37')
  ),
  Station(
      title: "Omm El-Masryeen station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[3]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent:RushSatation( path: '$date/$hour-38')
  ),
  Station(
      title: "Giza station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[4]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent: RushSatation( path: '$date/$hour-39')
  ),
  Station(
      title: "Faisal station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[5]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 3.7,
      percent: RushSatation( path: '$date/$hour-40')
  ),
  Station(
      title: "Cairo University station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[6]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent:RushSatation( path: '$date/$hour-41')
  ),
  Station(
      title: "Bohoth station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[7]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.2,
      percent:RushSatation( path: '$date/$hour-42')
  ),
  Station(
      title: "Dokki station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[8]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.2,
      percent: RushSatation( path: '$date/$hour-43')
  ),
  Station(
      title: "Opera station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[9]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent: RushSatation( path: '$date/$hour-44')
  ),
  Station(
      title: "Sadat Station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[10]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.1,
      percent: RushSatation( path: '$date/$hour-45')
  ),
  Station(
      title: "Mohamed Nagib station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[11]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent: RushSatation( path: '$date/$hour-46')
  ),
  Station(
      title: "Attaba station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[12]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent: RushSatation( path: '$date/$hour-47')
  ),
  Station(
      title: "Al-Shohadaa Station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[13]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent:RushSatation( path: '$date/$hour-48')
  ),
  Station(
      title: "Masarra station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[14]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-49')
  ),
  Station(
      title: "Rod El Farag station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[15]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.1,
      percent: RushSatation( path: '$date/$hour-50')
  ),
  Station(
      title: "St. Tresa station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[16]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.2,
      percent: RushSatation( path: '$date/$hour-51')
  ),
  Station(
      title: "Khalafawy station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[17]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 5.0,
      percent: RushSatation( path: '$date/$hour-52')
  ),
  Station(
      title: "Mezallat station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[18]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent: RushSatation( path: '$date/$hour-53')
  ),
  Station(
      title: "Kolleyyet El-Zeraa station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[19]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent: RushSatation( path: '$date/$hour-54')
  ),
  Station(
      title: "Shubra El Kheima station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl2(_url2[20]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent:RushSatation( path: '$date/$hour-55')
  ),
  Station(
      title: "Airport station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[0]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent:RushSatation( path: '$date/$hour-56')
  ),
  Station(
      title: "Ahmed Galal station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[1]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-57')
  ),
  Station(
      title: "Adly Mansour station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[2]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.6,
      percent:RushSatation( path: '$date/$hour-58')
  ),
  Station(
      title: "El Haykestep station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[3]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.6,
      percent:RushSatation( path: '$date/$hour-59')
  ),
  Station(
      title: "Omar Ibn El-Khattab station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[4]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.2,
      percent: RushSatation( path: '$date/$hour-60')
  ),
  Station(
      title: "Qobaa station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[5]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent: RushSatation( path: '$date/$hour-61')
  ),
  Station(
      title: "Hesham Barakat station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[6]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 5.0,
      percent: RushSatation( path: '$date/$hour-62')
  ),
  Station(
      title: "El-Nozha station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[7]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.6,
      percent: RushSatation( path: '$date/$hour-63')
  ),
  Station(
      title: "Nadi El-Shams station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[8]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.4,
      percent: RushSatation( path: '$date/$hour-64')
  ),
  Station(
      title: "Alf Maskan station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[9]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 3.9,
      percent: RushSatation( path: '$date/$hour-65')
  ),
  Station(
      title: "Heliopolis Square station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[10]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.5,
      percent: RushSatation( path: '$date/$hour-66')
  ),
  Station(
      title: "Haroun station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[11]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent: RushSatation( path: '$date/$hour-67')
  ),
  Station(
      title: "Al-Ahram station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[12]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.4,
      percent: RushSatation( path: '$date/$hour-68')
  ),
  Station(
      title: "Koleyet El-Banat station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[13]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.4,
      percent: RushSatation( path: '$date/$hour-69')
  ),
  Station(
      title: "Stadium station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[14]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.4,
      percent: RushSatation( path: '$date/$hour-70')
  ),
  Station(
      title: "Fair Zone station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[15]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.4,
      percent: RushSatation( path: '$date/$hour-71')
  ),
  Station(
      title: "Abbassia station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[16]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.4,
      percent: RushSatation( path: '$date/$hour-72')
  ),
  Station(
      title: "Abdou Pasha station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[17]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.2,
      percent: RushSatation( path: '$date/$hour-73')
  ),
  Station(
      title: "El Geish station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[18]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.5,
      percent: RushSatation( path: '$date/$hour-74')
  ),
  Station(
      title: "Bab El Shaaria station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[19]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent:RushSatation( path: '$date/$hour-75')
  ),
  Station(
      title: "Attaba station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[20]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.0,
      percent: RushSatation( path: '$date/$hour-76')
  ),
  Station(
      title: "Nasser Station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[21]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 3.5,
      percent: RushSatation( path: '$date/$hour-77')
  ),
  Station(
      title: "Maspero station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[22]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-78')
  ),
  Station(
      title: "Zamalek station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[23]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-79')
  ),
  Station(
      title: "Kit Kat station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[24]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-80')
  ),
  Station(
      title: "Sudan Street station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[25]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-81')
  ),
  Station(
      title: "Imbaba station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[26]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent: RushSatation( path: '$date/$hour-82')
  ),
  Station(
      title: "El-Bohy station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[27]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-83')
  ),
  Station(
      title: "El-Kawmeya Al-Arabiya station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[28]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-84')
  ),
  Station(
      title: "Ring Road station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[29]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-85')
  ),
  Station(
      title: "Rod El-Farag Axis station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[30]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent:RushSatation( path: '$date/$hour-86')
  ),
  Station(
      title: "El-Tawfikeya station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[31]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-87')
  ),
  Station(
      title: "Wadi El-Nil station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[32]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-88')
  ),
  Station(
      title: "Gamaat El Dowal Al-Arabiya station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[33]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent:RushSatation( path: '$date/$hour-89')
  ),
  Station(
      title: "Bulaq El-Dakroor  station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[34]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 0.0,
      percent: RushSatation( path: '$date/$hour-90')
  ),
  Station(
      title: "Cairo University station",
      subTitle:
      ("The Egyptian National Railways (ENR) operates the Cairo Metro, which transport up to 3.5 million passengers per day. Cairo is one of Africa's most densely populated cities, with a population of almost 22 million people. Cairo Metro is Africa's first metro system, having been active since 1990."),
      url:Center(child: ElevatedButton(
        onPressed: () => _launchUrl3(_url3[35]),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(150, 20), //////// HERE
        ),
        child: Text('Location'),
      )),
      img: 'assets/images/metro.jpg',
      star: 4.3,
      percent: RushSatation( path: '$date/$hour-91')
  ),
];


List<Uri> _url1 = [
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/0'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/1'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/2'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/3'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/4'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/5'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/6'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/7'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/8'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/9'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/10'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/11'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/12'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/13'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/14'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/15'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/16'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/17'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/18'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/19'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/20'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/21'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/22'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/23'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/24'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/25'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/26'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/27'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/28'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/29'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/30'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/31'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/32'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/33'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/34'),
];

Future<void> _launchUrl1(_url1) async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}

List<Uri> _url2=[
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/35'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/36'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/37'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/38'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/39'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/40'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/41'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/42'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/43'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/44'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/45'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/46'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/47'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/48'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/49'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/50'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/51'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/52'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/53'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/54'),
];
Future<void> _launchUrl2(_url2) async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}

List<Uri> _url3=[
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/55'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/56'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/57'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/58'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/59'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/60'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/61'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/62'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/63'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/64'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/65'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/66'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/67'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/68'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/69'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/70'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/71'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/72'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/73'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/74'),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/75'),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse(''),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/76'),
  Uri.parse('https://en.wikipedia.org/wiki/List_of_Cairo_Metro_stations#/maplink/77'),
];
Future<void> _launchUrl3(_url3) async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}