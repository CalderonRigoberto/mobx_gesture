import 'package:flutter/material.dart';
import '../store/todos_store.dart';
import '../widgets/loading.dart';
import '../widgets/todo_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TodosStore store = TodosStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobX Todos List'),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Loading(store: store),
          TodoListView(store: store),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => store.fetchTodos(),
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}