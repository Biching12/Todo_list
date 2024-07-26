import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/model/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title can not be empty!');
      return;
    }
    final todo = Todo(
      createdAt: DateTime.now(),
      name: title,
    );

    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    // print('TodoCubit - $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    // print('TodoCubit - $error');
  }
}
