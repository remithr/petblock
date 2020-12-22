// import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:petblock/models/country.dart';

class ApiService {
  String countries = 'https://restcountries.eu/rest/v2/all';

  Future getCountries() async {
    var res = await http.get(countries);
    print(res);
    return res.body;
    // Country.fromJson(jsonEncode(res.body));
    // return jsonEncode(res);
  }
}
