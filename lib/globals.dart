import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

const String baseURL = "http://127.0.0.1:8000/api/";
const Map<String,String> headers ={"Content-Type":"application/json"};
//amr work didn't work
const String editprofileURL = "http://127.0.0.1:8000/api/updateData"; //emulator localhost api men Dina
const Map<String, String> editprofileheaders = {"Content-Type": "application/json"};
const String addcarURL = "http://127.0.0.1:8000/api/"; //emulator localhost api men Dina
const Map<String, String> addcarheaders = {"Content-Type": "application/json"};

const String updatecarURL = "http://127.0.0.1:8000/api/"; //emulator localhost api men Dina
const Map<String, String> updatecarheaders = {"Content-Type": "application/json"};


errorSnackBar(BuildContext context,String text){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor:Colors.red,
          content: Text(text),
        duration: const Duration(seconds: 1),
      )
  );
}

class Network{
  final String _url = 'http://127.0.0.1:8000/api/';
  //if you are using android studio emulator, change localhost to 10.0.2.2
  var token;

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }

  authData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(
        Uri.parse(fullUrl),
        body: jsonEncode(data),
        headers: _setHeaders()
    );
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    await _getToken();
    return await http.get(
        fullUrl as Uri,
        headers: _setHeaders()
    );
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
    'Authorization' : 'Bearer $token'
  };

}