import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  int? id;
  String? name;
  User(
    this.id,
    this.name,
  );
  @override
  String toString() {
    // TODO: implement toString
    return '$id + $name';
  }

}
