import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart'as http;
import 'package:udemy_flutter/globals.dart';

class AuthServices{
  static Future<http.Response> personalinformation(
      String FirstName, String LastName, String PhoneNumber, String Email, String Password, String ConfirmPassword, String DateOfBirth, String  Address, String Gender,
      ) async{
    Map data = {
      'FirstName':FirstName,
      'LastName':LastName,
      'PhoneNumber':PhoneNumber,
      'Email':Email,
      'Password':Password,
      'ConfirmPassword':ConfirmPassword,
      'DateOfBirth':DateOfBirth,
      'Address':Address,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL+'Register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
  static Future<http.Response> login(String email, String password,) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'userLogin');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}