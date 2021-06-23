import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  get http => null;

  Future<void> _authenticate(
    String email, String password, String urlSegment) async {  
    final _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[AIzaSyAkryaEDYed74myVQhX3l-s_TPP7TmgPOc]';

    final response = await http.post(
      _url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );

    print(json.decode(response.body));

    return Future.value();
  }
  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, "signUp");
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, "signInWithPassword");
  }
}
