import 'dart:convert';
import 'dart:html';

import 'package:flutteruse/models/index.dart';

void main() {
  var jsonString = '{"name": "John Smith","email": "john@example.com"}';
  Map UserMap = jsonDecode(jsonString);
  var user = User.fromJson(UserMap);
  print('Howdy, ${user.name}!');
  print('We sent the verification link to ${user.email}.');
  print(user.toJson());



}
