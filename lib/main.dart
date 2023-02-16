import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:metro_app/notificate.dart';
import 'package:metro_app/pricing.dart';
import 'package:metro_app/map.dart';
import 'package:metro_app/screens_user/login_user.dart';
import 'package:metro_app/stations/view_station/linestation1.dart';
import 'firebase_options.dart';
import 'stations/model_station/model_station.dart';

DatabaseReference ref = FirebaseDatabase.instance.ref();
FirebaseDatabase database = FirebaseDatabase.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('1-1-2015/10-1');
  starCountRef.onValue.listen((DatabaseEvent event) {
    final data = event.snapshot.value;
  });

  runApp(const Metro());
}

class Metro extends StatelessWidget {
  const Metro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metro App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
      ),
      home: const MyHomePageState(),
    );
  }
}

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({Key? key}) : super(key: key);

  @override
  HomePagei createState() => HomePagei();
}

class HomePagei extends State<MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String month = DateFormat('MMMM').format(now);
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/iedited.jpg"), fit: BoxFit.fill),
        )),
        SingleChildScrollView(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft, child: AnimatedSearchBar()),
            ),
            Container(
                height: 120.0,
                width: 400.0,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  //borderRadius: BorderRadius.all(Radius.circular(20.0),)
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: FittedBox(
                                child: Text(
                                  month,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: FittedBox(
                                child: Text(now.day.toString()),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blueGrey, width: 1.5),
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0))),
                          padding: const EdgeInsets.all(25),
                          child: const Text(
                            'Cairo Metro',
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 22),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const Image(
                image: AssetImage("assets/images/logo.png"),
                height: 100,
                width: 100),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(200, 100), //////// HERE
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pricing()),
                        );
                      },
                      child: const Text(
                        "Ticket Prices",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(200, 100), //////// HERE
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => map()),
                        );
                      },
                      child: const Text(
                        "Metro Stations Map",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: const Size(200, 100), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text(
                          "LogIn Page",
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: const Size(200, 100), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => linestation1()),
                          );
                        },
                        child: const Text(
                          "Stations",
                        ),
                      )),
                ),
              ],
            ),
          ]),
        ),
      ])),
    );
  }
}

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  AnimatedSearchState createState() => AnimatedSearchState();
}

class AnimatedSearchState extends State<AnimatedSearchBar> {
  bool folded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: folded ? 56 : 500,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: kElevationToShadow[6],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: !folded
                    ? const TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none),
                      )
                    : null,
              ),
            ),
            AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(folded ? 32 : 0),
                        topRight: const Radius.circular(32),
                        bottomLeft: Radius.circular(folded ? 32 : 0),
                        bottomRight: const Radius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          folded ? Icons.search : Icons.close,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        showSearch(context: context, delegate: DataSearch());
                      },
                    )))
          ],
        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final stations = [
    'helwan',
    'ain Helwan',
    'helwan University',
    'wadi Hof',
    'hadayek Helwan',
    'el-Maasara',
    'tora El-Asmant',
    'kozzika',
    'tora El-Balad',
    'sakanat El-Maadi',
    'maadi',
    'hadayek El-Maadi',
    'dar El-Salam',
    'el-Zahraa',
    'mar Girgis',
    'el-Malek El-Saleh',
    'al-Sayeda Zeinab',
    'saad Zaghloul',
    'sadat',
    'nasser',
    'orabi',
    'al-Shohadaa',
    'ghamra',
    'el-Demerdash',
    'manshiet El-Sadr',
    'kobri El-Qobba',
    'hammamat El-Qobba',
    'saray El-Qobba',
    'hadayeq El-Zaitoun',
    'helmeyet El-Zaitoun',
    'el-Matareyya',
    'ain Shams',
    'ezbet El-Nakhl',
    'el Marg',
    'new El Marg',
    'el Mounib',
    'sakiat Mekky',
    'omm El-Masryeen',
    'el Giza',
    'faisal',
    'cairo University',
    'el Bohoth',
    'dokki',
    'opera',
    'mohamed Naguib',
    'attaba',
    'masarra',
    'road El-Farag',
    'st. Teresa',
    'khalafawy',
    'mezallat',
    'kolleyyet El-Zeraa',
    'shubra El-Kheima',
    'airport',
    'ahmed Galal',
    'adly Mansour',
    'el Haykestep',
    'omar Ibn El-Khattab',
    'qobaa',
    'hesham Barakat',
    'el Nozha',
    'nadi El-Shams',
    'alf Maskan',
    'heliopolis Square',
    'haroun',
    'al-Ahram',
    'koleyet El-Banat',
    'stadium',
    'fair Zone',
    'abbassia',
    'abdou Pasha',
    'el Geish',
    'bab El Shaaria',
    'maspero',
    'zamalek',
    'kit Kat',
    'sudan Street',
    'imbaba',
    'el-Bohy',
    'el Kawmeya Al-Arabiya',
    'ring Road',
    'rod El-Farag Axis',
    'el-Tawfikeya',
    'wadi El-Nil',
    'gamaat El Dowal Al-Arabiya',
    'bulaq El-Dakroor',
  ];

  final recentStations = ['sadat', 'nasser', 'orabi'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, query = "");
        },
        icon: AnimatedIcon(
          progress: transitionAnimation,
          icon: AnimatedIcons.menu_arrow,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    final List suggestions = lines.where((p) => p.title.toLowerCase().startsWith(query.toLowerCase())).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  linestation1(current: lines.indexWhere((element) => element.title.toLowerCase() == suggestions[index].title.toLowerCase()),)),
            );},
          textColor: Colors.black,
          leading: Icon(Icons.location_city),
          title: Text(suggestions[index].title)
      ),
      itemCount: suggestions.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List suggestions = lines.where((p) => p.title.toLowerCase().startsWith(query.toLowerCase())).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  linestation1(current: lines.indexWhere((element) => element.title.toLowerCase() == suggestions[index].title.toLowerCase()),)),
            );},
          textColor: Colors.black,
          leading: Icon(Icons.train),
          title: Text(suggestions[index].title)
      ),
      itemCount: suggestions.length,
    );
  }
}
