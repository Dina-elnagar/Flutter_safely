import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart'as http;
import 'package:udemy_flutter/globals.dart';
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
    var url = Uri.parse(baseURL+'auth/Register');
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
  // static Future<http.Response> put(String first_name,String last_name,
  //     String another_health_problem, String Address) async {
  //   Map data = {
  //     "firstname" : first_name,
  //     "lastname" : last_name,
  //     //"email": email,
  //    // "password": password,
  //     "healthproblems": another_health_problem,
  //     "address": Address,
  //   };
  //   var body = json.encode(data);
  //   var url = Uri.parse(updatePersonalInfo as dynamic );
  //   http.Response response = await http.put(
  //       updatePersonalInfo as dynamic
  //     // url,
  //     // headers: editprofileheaders,
  //     // body: body,
  //   );
  //   print(response.body);
  //   return response;
  //   }

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



