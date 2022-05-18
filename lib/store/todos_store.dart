import 'package:mobx/mobx.dart';
import '../services/todo_service.dart';
import '../models/todo.dart';

part 'todos_store.g.dart';


class TodosStore = _TodosStore with _$TodosStore;

abstract class _TodosStore with Store {
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  TodoService service = TodoService();

  @observable
  bool completed = false;

  @observable
  ObservableFuture<List<Todo>> fetchTodosFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchTodosFuture != emptyResponse &&
      fetchTodosFuture.status == FutureStatus.fulfilled;

  static ObservableFuture<List<Todo>> emptyResponse =
      ObservableFuture.value([]);

  @computed
  ObservableList<Todo> get completedTodos =>
      ObservableList.of(todos.where((element) => element.completed == true));

  @computed
  ObservableList<Todo> get incompletedTodos =>
      ObservableList.of(todos.where((element) => element.completed == false));

  @computed
  ObservableList<Todo> get visibleTodos {
    return completed ? completedTodos : incompletedTodos;
  }

  _TodosStore() {
    fetchTodos();
  }

  @action
  Future<List<Todo>> fetchTodos() async {
    todos.clear();
    final future = service.getTodos();
    fetchTodosFuture = ObservableFuture(future);

    return todos = ObservableList.of(await future);
  }

  @action
  void updateSwitchValue(bool value) {
    completed = value;
  }
}