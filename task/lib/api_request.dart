import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:task/provider.dart';
import 'package:task/user_card_constructor.dart';

void getUsersList(
    {required int pageIndex, required BuildContext context}) async {
  var response = await http.get(
      Uri.parse('https://reqres.in/api/users?page=${pageIndex.toString()}'));
  var jsonData = jsonDecode(response.body);
  List<Widget> usersData = [];
  if (response.statusCode == 200 && jsonData['data'].length != 0) {
    for (var obj in jsonData['data']) {
      UserCardConstructor userCardConstructor = UserCardConstructor(
        username: '${obj['first_name']} ${obj['last_name']}',
        userPhotoUrl: obj['avatar'],
        userEmail: obj['email'],
      );
      usersData.add(userCardConstructor);
    }
    context.read<UserCardProvider>().updateUsersList(usersData);
  }
}
