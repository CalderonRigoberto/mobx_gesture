// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodosStore on _TodosStore, Store {
  Computed<bool>? _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults,
              name: '_TodosStore.hasResults'))
          .value;
  Computed<ObservableList<Todo>>? _$completedTodosComputed;

  @override
  ObservableList<Todo> get completedTodos => (_$completedTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.completedTodos,
              name: '_TodosStore.completedTodos'))
      .value;
  Computed<ObservableList<Todo>>? _$incompletedTodosComputed;

  @override
  ObservableList<Todo> get incompletedTodos => (_$incompletedTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.incompletedTodos,
              name: '_TodosStore.incompletedTodos'))
      .value;
  Computed<ObservableList<Todo>>? _$visibleTodosComputed;

  @override
  ObservableList<Todo> get visibleTodos => (_$visibleTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.visibleTodos,
              name: '_TodosStore.visibleTodos'))
      .value;

  late final _$todosAtom = Atom(name: '_TodosStore.todos', context: context);

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  late final _$completedAtom =
      Atom(name: '_TodosStore.completed', context: context);

  @override
  bool get completed {
    _$completedAtom.reportRead();
    return super.completed;
  }

  @override
  set completed(bool value) {
    _$completedAtom.reportWrite(value, super.completed, () {
      super.completed = value;
    });
  }

  late final _$fetchTodosFutureAtom =
      Atom(name: '_TodosStore.fetchTodosFuture', context: context);

  @override
  ObservableFuture<List<Todo>> get fetchTodosFuture {
    _$fetchTodosFutureAtom.reportRead();
    return super.fetchTodosFuture;
  }

  @override
  set fetchTodosFuture(ObservableFuture<List<Todo>> value) {
    _$fetchTodosFutureAtom.reportWrite(value, super.fetchTodosFuture, () {
      super.fetchTodosFuture = value;
    });
  }

  late final _$fetchTodosAsyncAction =
      AsyncAction('_TodosStore.fetchTodos', context: context);

  @override
  Future<List<Todo>> fetchTodos() {
    return _$fetchTodosAsyncAction.run(() => super.fetchTodos());
  }

  late final _$_TodosStoreActionController =
      ActionController(name: '_TodosStore', context: context);

  @override
  void updateSwitchValue(bool value) {
    final _$actionInfo = _$_TodosStoreActionController.startAction(
        name: '_TodosStore.updateSwitchValue');
    try {
      return super.updateSwitchValue(value);
    } finally {
      _$_TodosStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
completed: ${completed},
fetchTodosFuture: ${fetchTodosFuture},
hasResults: ${hasResults},
completedTodos: ${completedTodos},
incompletedTodos: ${incompletedTodos},
visibleTodos: ${visibleTodos}
    ''';
  }
}
