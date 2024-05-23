//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../widgets/todo_list.dart';
//  //   ///

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //  Show the todoList
            const Expanded(child: TodoList()),

            //  Forms for adding new tasks - FormField()
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(label: Text('Email Address')),
              onChanged: (value) {
                setState(() {
                  _email = value;
                  debugPrint(value);
                });
              },
            ),
            const SizedBox(height: 16.0),
            Text('Your email: $_email'),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
