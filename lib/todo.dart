import "package:flutter/material.dart";
// import "package:to_do_app/contants/cost.dart";
import "package:to_do_app/list.dart";

class Todo extends StatelessWidget {
  final Todoitems todo;
  const Todo({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
          onTap: () {
            print("object");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading:  Icon(
           todo.isdone? Icons.check_box : Icons.check_box_outline_blank_outlined,
            color: Colors.blue,
          ),
          title:  Text(
            todo.todotext!, 
            // The ! at the end of todo.todotext! is telling Dart that you are certain that todo.todotext is not null. It suppresses any null-related warnings or errors that the Dart analyzer might otherwise generate.
            style:  TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isdone? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(8),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: IconButton(
                iconSize: 18,
                color: Colors.white,
                icon: const Icon(Icons.delete),
                onPressed: () {
                  print("delete");
                },
              ),
            ),
          )),
    );
  }
}
