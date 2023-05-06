import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {

  var ServerUrl = "http://flutterapitutorial.codeforiraq.org/api";
  var status;
  var token;

  loginData(String email, String password) async {
    final response = await http.post(
        Uri.parse('https://safelyy.store/api/userLogin'),
        headers: {
          'Accept': 'application/json'
        },
        body: {
          "email": "$email",
          "password": "$password"
        });
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if (status) {
      print('data : ${data["error"]}');
    } else {
      print('data : ${data["access_token"]}');
      save(data["access_token"]);
    }
  }


    String serverUrl = 'http://127.0.0.1:8000/api/';
  registerData(String firstname, String lastname, String phonenumber,
      String email, String password, String confirmpassword, String dateofbirth,
      String address, String gender,) async {
    String myUrl = "http://127.0.0.1:8000/api/Register";
    final response = await http.post(myUrl as Uri,
        headers: {
          'Accept': 'application/json'
        },
        body: {
          "firstname": "$firstname",
          "lastname": "$lastname",
          "phonenumber": "$phonenumber",
          "email": "$email",
          "password": "$password",
          "confirmpassword": "$confirmpassword",
          "dateofbirth": "$dateofbirth",
          "adderss": "$address",
          "gender": "$gender",
        });
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if (status) {
      print('data : ${data["error"]}');
    } else {
      print('data : ${data["token"]}');
      save(data["token"]);
    }
  }

  Future<List> getData() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'access_token';
    final value = prefs.get(key) ?? 0;
    http.Response response = await http.get(Uri.parse('http://127.0.0.1:8000/api/carShow'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $value'
        });
    return json.decode(response.body);
  }

  void deleteData(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;

    String myUrl = "$serverUrl/carDelete/$id";
    http.delete(myUrl as Uri,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $value'
        }).then((response) {
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }



  Future <void> editcarData(String model , String color,String plate_NO ) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'access_token';
    final value = prefs.get(key) ?? 0;

    http.put(Uri.parse('http://127.0.0.1:8000/api/CarUpdate'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $value'
        },
        body: {
          "model": "$model",
          "color": "$color",
          "plate_NO": "$plate_NO"
        }).then((response) {
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }

  Future <void> addcarData(String model , String color, String plate_NO, [String? trim]) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'access_token';
    final value = prefs.get(key);
    http.post(Uri.parse('http://127.0.0.1:8000/api/CarStore'),
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
        },
        body: {
          "model": "$model",
          "color" : "$color",
          "plate_NO" : "$plate_NO"
        }
    ).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }

  save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'access_token';
    final value = token;
    prefs.setString(key, value);
  }

  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'access_token';
    final value = prefs.get(key) ?? 0;
    print('read : $value');
  }
}