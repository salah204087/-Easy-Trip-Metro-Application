class Path {
  late String money;
  late int numofstation;
  late List<String> station;

  Path({
    required this.money,
    required this.numofstation,
    required this.station,

  });
  Path.fromJson(Map<String, dynamic> json) {
    money = json["money"];
    numofstation = json['number of stations'] as int;
    station = json['stations'].cast<String>();
  }

}
