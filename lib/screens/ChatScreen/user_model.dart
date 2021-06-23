import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Leonardo',
  imageUrl: 'assets/images/user.icon.png',
  isOnline: true,
);

// USERS
final User ibm = User(
  id: 1,
  name: 'IBM',
  imageUrl: 'assets/images/ibm.icon.png',
  isOnline: true,
);
final User google = User(
  id: 2,
  name: 'Google',
  imageUrl: 'assets/images/google.icon.png',
  isOnline: true,
);
final User oracle = User(
  id: 3,
  name: 'Oracle',
  imageUrl: 'assets/images/oracle.icon.png',
  isOnline: false,
);
final User microsoft = User(
  id: 4,
  name: 'Microsoft',
  imageUrl: 'assets/images/microsoft.icon.jpg',
  isOnline: false,
);
final User apple = User(
  id: 5,
  name: 'Apple',
  imageUrl: 'assets/images/apple.icon.jpg',
  isOnline: true,
);
final User amazon = User(
  id: 6,
  name: 'Amazon',
  imageUrl: 'assets/images/amazon.icon.png',
  isOnline: false,
);
