import 'dart:convert';

import 'package:http/http.dart' as http;


class Services {

  final String url = 'http://www.boredapi.com/api/activity/';
  String ans='';
  Future<String> pressed() async {
    http.Response resp = await http.get(Uri.parse(url));
    String data=resp.body;
    var decodedData = jsonDecode(data);
    print(decodedData['activity']);
    return decodedData['activity'];
  }


}