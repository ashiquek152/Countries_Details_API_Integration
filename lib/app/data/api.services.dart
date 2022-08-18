import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:shahid_machine_test/app/data/location.model.dart';

class Constants {
  static String baseURL = "https://restcountries.com/v3.1/";

  static Future<List<LocationModel>> getAllLocations() async {
    final response = await http.get(Uri.parse("${baseURL}all"));
    print(response.statusCode);
    final locationModel = locationModelFromJson(response.body);
    return locationModel;
  }

  static getCountryDetails(String countryName) async {
    final response = await http.get(Uri.parse("${baseURL}name/$countryName"));
    print(response.statusCode);

    final locationModel = locationModelFromJson(response.body);
    for (var i = 0; i < locationModel.length; i++) {
      log(locationModel[i].name.common.toString());
    }

    // return locationModel;
  }
}
