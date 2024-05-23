//  //   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../../data/todos_data.dart';
import '../../domain/todo.dart';
//  PARTS
part 'list_provider.g.dart';
//  //   ///

//  todoProvider
@riverpod
List<Todo> todo(TodoRef ref) {
  return todos;
}
