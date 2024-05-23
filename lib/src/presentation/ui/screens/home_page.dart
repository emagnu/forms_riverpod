//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../widgets/todo_list.dart';
//  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final String _email = '';

  @override
  Widget build(BuildContext context) {
    // final TextEditingController emailController = TextEditingController();
    GlobalKey formGlobalKey = GlobalKey<FormState>();

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
            // TextField(
            //   controller: emailController,
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: const InputDecoration(label: Text('Email Address')),
            //   // onChanged: (value) {setState(() {_email = value;debugPrint(value);});},
            // ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  // decoration: const InputDecoration(labelText: 'New Task',),
                  // Todo title

                  // Tod description

                  // Priority

                  // Submit button
                  const SizedBox(height: 16.0),
                  FilledButton(
                    key: formGlobalKey,
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    child: const Text('Add todo'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            // Text('Your email: $_email'),
            // FilledButton(onPressed: () {debugPrint('EmailController: $emailController.text.trim()');},child: const Text('Print email'),),

            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
