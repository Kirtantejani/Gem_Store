// import 'package:http/http.dart' as http;
//
// import 'dart:convert';
//
// class ApiImage{
//  static Future<<Map<Int,String,String>>>   async {
//  const url = 'https://mocki.io/v1/97f324bd-a1ee-41c7-828b-a1e549eb43df';
//  try {
//  final response = await http.get(Uri.parse(url));
//  if (response.statusCode == 200) {
//  final Map<String, dynamic> data = json.decode(response.body);
//  final List<dynamic> results = data['results'];
//
//  List<String> userList = results.map((user) {
//  return user['Name'].toString(); // Assuming 'Name' is the key in the API response
//  }).toList();
//  List<String> emailList = results.map((user) {
//  return user['email'].toString();
//  }).toList();
//  Map<String, List<String>> combinedData = {
//  'names': userList,
//  'emails': emailList,
//  };
//  return combinedData;
//  } else {
//  throw Exception('Failed to load user data');
//  }
//
//
//  }
// } } catch (error) {
//  throw Exception('Error fetching user data: $error');
//  }
//

import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiImage {
  static Future<List<Map<String, dynamic>>> fetchData() async {
    const url = 'https://mocki.io/v1/97f324bd-a1ee-41c7-828b-a1e549eb43df';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> results = json.decode(response.body);

        List<Map<String, dynamic>> dataList = results.map((user) {
          return {
            'Id': user['PictureId'],
            'Url': user['Pictureurl'],
            'Name': user['Picturename'],

          };
        }).toList();
        print(results);
        print(dataList[0]['Url']);

        return dataList;
      } else {
        throw Exception('Failed to load user data');
      }
    } catch (error) {
      throw Exception('Error fetching user data: $error');
    }
  }
}
