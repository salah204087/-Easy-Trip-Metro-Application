import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import '../model_analysis/Lines_data_model_analysis.dart';

class AppDataController_analysis extends GetxController {
  List<LinesModel> LinesData = [];
  List<MultiSelectItem> dropDownData = [];

  getSubjectData() {
    LinesData.clear();
    dropDownData.clear();

    Map<String, dynamic> apiResponse = {
      "code": 200,
      "message": "Lines lists.",
      "data": [
        {"Line_id": "1", "Line_name": "Line 1"},
        {"Line_id": "2", "Line_name": "Line 2"},
        {"Line_id": "3", "Line_name": "Line 3"},
      ]
    };

    if (apiResponse['code'] == 200) {
      List<LinesModel> tempSubjectData = [];
      apiResponse['data'].forEach(
        (data) {
          tempSubjectData.add(
            LinesModel(
              LinesId: data['Line_id'],
              LinesName: data['Line_name'],
            ),
          );
        },
      );
      print(tempSubjectData);
      LinesData.addAll(tempSubjectData);

      dropDownData = LinesData.map((subjectdata) {
        return MultiSelectItem(subjectdata, subjectdata.LinesName);
      }).toList();

      update();
    } else if (apiResponse['code'] == 400) {
      print("Show Error model why error occurred..");
    } else {
      print("show some error model like something went worng..");
    }
  }
}
