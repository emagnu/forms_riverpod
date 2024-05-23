//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  //   ///

enum Priority {
  urgent(color: Colors.red, title: 'Urgent'),
  high(color: Colors.orange, title: 'High'),
  medium(color: Colors.amber, title: 'Medium'),
  low(color: Colors.green, title: 'Low');

  final Color color;
  final String title;
  const Priority({required this.color, required this.title});
}

class Todo {
  final String title;
  final String description;
  final Priority priority;

  const Todo({
    required this.title,
    required this.description,
    required this.priority,
  });
}
