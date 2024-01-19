// import "package:flutter/material.dart";

// how to create a list of objects to pass to a widget in flutter
// create a class to represent the todoitems after that i create alist of instances of that clas to store info of multiple students
class Todoitems {
  String? id;
  String? todotext;
  bool isdone;

  Todoitems({required this.id, required this.todotext, this.isdone = false});

  static List<Todoitems> todolist() {
    return [
      Todoitems(id: "1", todotext: "cleaning", isdone: true),
      Todoitems(id: "2", todotext: "reading", isdone: true),
      Todoitems(id: "3", todotext: "cycling"),
      Todoitems(id: "4", todotext: "dancing"),
    ];
  }
}
// List<Todoitems> items = [Todoitems(id: "1", todotext: "cleaning"),Todoitems(id: "2", todotext: "reading"),Todoitems(id: "3", todotext: "cycling"),Todoitems(id: "4", todotext: "dancing")];
