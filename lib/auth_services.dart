import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart'as http;
import 'package:udemy_flutter/globals.dart';

class AuthServices{
  //tasneem work
  static Future<http.Response> personalinformation(
      String first_name, String last_name, String phone_number, String email, String password, String confirm_password, String date_of_birth, String  Address, String gender,
      ) async{
    Map data = {
      'FirstName':first_name,
      'LastName':last_name,
      'PhoneNumber':phone_number,
      'Email':email,
      'Password':password,
      'ConfirmPassword':confirm_password,
      'DateOfBirth':date_of_birth,
      'Address':Address,
      'Gender':gender,
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
  //tasneem work

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
  //tasneem work

  static Future<http.Response> MedicallInformation(String blood_type, String blood_pressure, bool Yes ,bool No, bool yes, bool no) async {
    Map data = {
      "BloodType": blood_type,
      "HealthProblems": blood_pressure,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'Register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
    }
  //amr work

  static Future<http.Response> put(String first_name,String last_name,
      String another_health_problem, String address) async {
    Map data = {
      "firstname" : first_name,
      "lastname" : last_name,
      "healthproblems": another_health_problem,
      "address": address,
    };
    var body = json.encode(data);
    var url = Uri.parse(editprofileURL );
    http.Response response = await http.put(
      url,
      headers: editprofileheaders,
      body: body,
    );
    print(response.body);
    return response;
  }
  //amr work

  static Future<http.Response> addcardataPressed(String model,String color,String plate_NO) async {
    Map data = {
      "carmodel" : model,
      "carcolor" : color,
      "platenumber": plate_NO,
    };
    var body = json.encode(data);
    var url = Uri.parse(addcarURL + 'CarStore');
    http.Response response = await http.post(
      url,
      headers: addcarheaders,
      body: body,
    );
    print(response.body);
    return response;
  }
   //amr work didin't work
  static post(String model, String color, String plate_NO){}

  static Future<http.Response> updatecardataPressed(String model,String color,String plate_NO) async {
    Map data = {
      "carmodel" : model,
      "carcolor" : color,
      "platenumber": plate_NO,
    };
    var body = json.encode(data);
    var url = Uri.parse(updatecarURL + 'CarUpdate');
    http.Response response = await http.put(
      url,
      headers: updatecarheaders,
      body: body,
    );
    print(response.body);
    return response;
  }
  static put2(String model, String color, String plate_NO){}



}