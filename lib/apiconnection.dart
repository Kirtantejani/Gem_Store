import 'dart:convert';

import 'package:app/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Api  {
 static Future<Map<String, List<String>>> fetchUser() async {

   const url = 'https://mocki.io/v1/3e3a207f-9b93-40e3-8dbc-6746f3872be7';

   try {
   final response = await http.get(Uri.parse(url));
   if (response.statusCode == 200) {
   final Map<String, dynamic> data = json.decode(response.body);
   final List<dynamic> results = data['results'];

   List<String> userList = results.map((user) {
   return user['Name'].toString(); // Assuming 'Name' is the key in the API response
   }).toList();
   List<String> emailList = results.map((user) {
     return user['email'].toString();
   }).toList();
   Map<String, List<String>> combinedData = {
     'names': userList,
     'emails': emailList,
   };
     return combinedData;
   } else {
   throw Exception('Failed to load user data');
   }
   } catch (error) {
   throw Exception('Error fetching user data: $error');
   }



   // const url = 'https://mocki.io/v1/ec39837f-8b55-4ba7-b4ec-afd4ebe9172d';
    // final uri = Uri.parse(url);
    // final respose = await http.get(uri);
    // final body = respose.body;
    // final json = jsonDecode(body);
    // final result =json['results'] as List<dynamic>;
    // final tranfomed=result.map((e){
    //  return e['Name'];
    // }).toList() as List<String>;
    //
    // return tranfomed;

    // setState(() {
    //   users = json['results'];
    //   print(users);
    // });

  }


    // return BigText(
    //     text: user[0]['Name'],
    //     size: 16,
    //     color: Get.isDarkMode ? Colors.white : Colors.black,
    //     weight: FontWeight.bold);

}