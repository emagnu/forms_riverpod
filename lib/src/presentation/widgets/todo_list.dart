//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
// import '../../data/todos_data.dart';
import '../providers/list_provider.dart';
//  //   ///

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);

    return ListView.builder(
      // itemCount: todos.length,
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: todos[index].priority.color.withOpacity(0.5),
            ),
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      todos[index].title,
                      style: const TextStyle(
                          // color: todos[index].priority.color,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      todos[index].description,
                    ),
                  ],
                ),
                // IconButton(icon: const Icon(Icons.delete),onPressed: () {ref.read(todoProvider.notifier).deleteTodo(todos[index]);},),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: todos[index].priority.color,
                  ),
                  child: Text(todos[index].priority.title),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
