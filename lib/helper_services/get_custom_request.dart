import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_practice/helper_services/internet_connectivity_service.dart';

class CustomGetRequest {
  Future getCustomRequest({required BuildContext context, String? url}) async {
    try {
      http.Response response = await http.get(Uri.parse(url!));

      print('body------> ${response.body}');
      print('response------> ${response.statusCode}');

      bool res = await InternetConnectivityService.internetConnectivity();

      if (!res) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please Connect Your Internet')));
      } else {
        var jsonDecode = json.decode(response.body);

        if (response.statusCode != 200) {
          return null;
        } else {
          return jsonDecode;
        }
      }
    } catch (err) {
      print(err);
      return null;
    }
  }
}
