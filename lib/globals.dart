import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


const String baseURL = "http://127.0.0.1:8000/api/";
const Map<String,String> headers ={"Content-Type":"application/json"};

const String editprofileURL = "http://127.0.0.1:8000/api/updateData"; //emulator localhost api men Dina
const Map<String, String> editprofileheaders = {"Content-Type": "application/json"};
// const Map<String, String> editprofileheaders = {"Content-Type": "application/json"};
// // Update personal information with Bearer token
//   Future<void> updatePersonalInfo(
// AuthServices, String accessToken) async {
//   final  baseURL = 'http://127.0.0.1:8000/api/updateData';
//   final headers = {
//     'Content-Type': 'application/json',
//     'Authorization': 'Bearer $accessToken',
//   };
//   final body = json.encode(AuthServices.toJson());
//
//   final response = await http.put(baseURL as Uri, headers: headers, body: body);
//
//   if (response.statusCode == 200) {
//     print('Personal information updated successfully');
//   } else {
//     print('Failed to update personal information: ${response.body}');
//   }



// Update personal information with Bearer token

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