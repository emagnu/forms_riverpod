//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../../widgets/todo_list.dart';
//  //   ///

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Expanded(child: TodoList(todos: todos)),
            const Expanded(child: TodoList()),

            // form stuff below here
            Form(
              key: _formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // todo title
                  TextFormField(
                    maxLength: 20,
                    decoration:
                        const InputDecoration(label: Text('Todo title')),
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return 'Please enter a title for your Todo.';
                      }
                      return null;
                    },
                  ),

                  // todo description
                  TextFormField(
                    maxLength: 40,
                    decoration:
                        const InputDecoration(label: Text('Todo description')),
                    validator: (v) {
                      if (v == null || v.isEmpty || v.length < 5) {
                        return 'Enter a description at least 5 characters long.';
                      }
                      return null;
                    },
                  ),

                  // priority

                  // submit button
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: () {
                      _formGlobalKey.currentState!.validate();
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text('Add Todo'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   // final String _email = '';

//   @override
//   Widget build(BuildContext context) {
//     // final TextEditingController emailController = TextEditingController();
//     GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Todo List'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[200],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             //  Show the todoList
//             const Expanded(child: TodoList()),

//             //  Forms for adding new tasks - FormField()
//             // TextField(
//             //   controller: emailController,
//             //   keyboardType: TextInputType.emailAddress,
//             //   decoration: const InputDecoration(label: Text('Email Address')),
//             //   // onChanged: (value) {setState(() {_email = value;debugPrint(value);});},
//             // ),
//             Form(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: <Widget>[
//                   // decoration: const InputDecoration(labelText: 'New Task',),
//                   // Todo title
//                   TextFormField(
//                     maxLength: 20,
//                     decoration: const InputDecoration(
//                       label: Text('Todo title'),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         debugPrint('value: $value');
//                         return 'Please enter a title for your Todo';
//                       }
//                       return null;
//                     },
//                   ),
//                   // Tod description

//                   // Priority

//                   // Submit button
//                   const SizedBox(height: 16.0),
//                   FilledButton(
//                     key: formGlobalKey,
//                     onPressed: () {
//                       debugPrint('Pressed $formGlobalKey.currentState');
//                       (formGlobalKey.currentState!.validate());
//                     },
//                     style: FilledButton.styleFrom(
//                       backgroundColor: Colors.grey[800],
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4.0),
//                       ),
//                     ),
//                     child: const Text('Add todo'),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             // Text('Your email: $_email'),
//             // FilledButton(onPressed: () {debugPrint('EmailController: $emailController.text.trim()');},child: const Text('Print email'),),

//             const SizedBox(height: 16.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
