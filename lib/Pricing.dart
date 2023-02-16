import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:metro_app/rush.dart';
import 'package:http/http.dart' as http;
import 'package:metro_app/pricingmodel.dart' as p;

class pricing extends StatefulWidget {
  @override
  _pricingState createState() => _pricingState();
}

class _pricingState extends State<pricing> {
  int price = 50;
  int numberofT = 1;
  String dropdownvalue = 'Helwan';
  String dropdownvalue2 = 'Wadi Hof';

  // List of items in our dropdown menu
  List<String> items = [
        'Helwan',
    'Ain Helwan',
    'Helwan University',
    'Wadi Hof',
    'Helwan Gardens',
    'Masara',
    'Tora Cement',
    'Kotsika',
    'Tora al-Balad',
    'Maadi Barracks',
    'Maadi ',
    'Hadayek al-Maadi',
    'Dar al-Salaam',
    'Al-Zahra',
    'Mar Gerges',
    'The Good King',
    'Sayida Zainab',
    'Saad Zagloul',
    'Anwar Sadat ',
    'Jamal Abdel Nasser',
    'Ahmed Orabi ',
    'Ghamra',
    'Al-Demerdash',
    'Manshiyat al-Sadr',
    'The Dome Bridge',
    'Hammam al-Quba',
    'Saray al-Qubba',
    'The Gardens of Olives',
    'Helmiyet al-Zaytoun',
    'Al-Matareya',
    'Ain Shams',
    'Izbat al-Nakhl',
    'The Meadow',
    'The New Prairie ',
    'Munib',
    'Sakiat Makki ',
    'Umm al-Masrya',
    'Giza ',
    'Faisal',
    'University Cairo',
    "Al-Research",
    "Dokki",
    "Opera",
    "Anwar El-Sadat",
    "Mohamed Naguib",
    " The Threshold",
    "Masara",
    "Rawd al-Faraj",
    "Santa Teresa",
    "Al-Khalfawi",
    " Parasols",
    "Faculty of Agriculture",
    "Shubra El-Kheima",
    "Adly Mansour",
    "Hykestep",
    "Omar Ibn al-Khattab",
    "Quba",
    "Hisham Barakat",
    "Al-Nuzha",
    "The Sun Club",
    "Alf Maskan",
    "Heliopolis",
    "Aaron",
    "Al-Ahram",
    "Girls College",
    "Stadium",
    "Fairground",
    "Abbasiya",
    "Abdo Pasha",
    "Army",
    "Bab al-Sha aria",
    "Ataba",
    "Maspero",
    "Safaa Hijazi",
    "Martyrs",
    "Gamal Abdel Nasser",
    "Kit Kat"
  ];
  p.Path? pricing = null;

  Future<p.Path?> fetchAndSetPricing(String fromstation,String tostation) async {
    print("test" + fromstation + tostation);
    try {
      var url = Uri.parse(
          'http://ahmedsaleh.pythonanywhere.com/$fromstation/$tostation/');
      print(url);
      final response = await http.get(url);
      print(response.statusCode.toString());
      final extractedData = json.decode(response.body) as Map<String,dynamic>;
      print(extractedData);
      if (extractedData.isEmpty) {
        return null;
      }
      var pricing=p.Path.fromJson(extractedData);
      return pricing;
    } catch (error) {
      print("error: $error");
      return null;
    }
  }

  void increasing() {
    setState(() {
      numberofT++;
    });
  }

  void decreasing() {
    setState(() {
      if (numberofT > 1) {
        numberofT--;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:AssetImage("assets/images/pricing.jpg"),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.only(top: 20),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            }, //to back to home page
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //  broderSide: BorderSide(width: 3,color: Colors.black),
              color: Color.fromRGBO(254, 240, 219, 5),
            ),
            height: 200,
            width: 300,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "From  :",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      DropdownButton(
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items, style: TextStyle(color: Colors.black)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "To  :",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      DropdownButton(
                        // Initial Value
                        value: dropdownvalue2,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items, style: TextStyle(color: Colors.black),)
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue2) {
                          setState(() {
                            dropdownvalue2 = newValue2!;
                          });
                        },
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shadowColor: Colors.black26,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: const Size(40, 30), //////// HERE
                    ),
                    onPressed: (){
                    fetchAndSetPricing(dropdownvalue, dropdownvalue2).then((value){
                      if(value != null){
                        setState((){
                          pricing = value;
                          print( int.parse(pricing!.money.split(" ")[0]));
                        });
                      }
                    });
                  }, child: Text("submit"),

                  ),

                ]),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: const Color.fromRGBO(254, 240, 219, 5),
                  child: const Center(
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    decreasing();
                  },
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    //  broderSide: BorderSide(width: 3,color: Colors.black),
                    color: Color.fromRGBO(254, 240, 219, 5),
                  ),
                  child: Center(
                    child: Text(
                      "$numberofT",
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                RaisedButton(
                  color: const Color.fromRGBO(254, 240, 219, 5),
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    increasing();
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            width: 250,
            height: 60,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: Center(
                child: Text(
              "price is : ${pricing == null ? "" : int.parse(pricing!.money.split(" ")[0]) * numberofT}",
              style: const TextStyle(color: Colors.black, fontSize: 25),
            )),
          ),
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              width: 190,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.run_circle),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Route Rush",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Rush",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "percentage",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RushHours()),
              );
            },
          )
        ],
      ),
    ));
  }
}
