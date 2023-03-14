
import 'package:flutter/material.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final changeCheck;
  final deleteItem;
  const ToDoItem({
    super.key, 
    required this.todo, 
    this.changeCheck,
    this.deleteItem,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 7.0,
      ),
      child: ListTile(
        onTap: () {
          changeCheck(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        tileColor: Colors.grey,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.black,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: IconButton(
            padding: const EdgeInsets.all(7.0),
            icon: const Icon(Icons.delete,
            color: Colors.white,
            size: 28.0,
            ),
            onPressed: () {
              deleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
