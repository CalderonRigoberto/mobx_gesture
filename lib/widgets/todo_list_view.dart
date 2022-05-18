import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../store/todos_store.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key, required this.store}) : super(key: key);

  final TodosStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (!store.hasResults) {
          return Container();
        }

        if (store.visibleTodos.isEmpty) {
          return const Center(
            child: Text('No todos available :('),
          );
        }

        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor),
                ),
              ),
              child: SwitchListTile(
                title: Text(
                  'Completed todos',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                value: store.completed,
                onChanged: (value) => store.updateSwitchValue(value),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: store.visibleTodos.length,
                itemBuilder: (_, int index) {
                  final todo = store.visibleTodos[index];
                  return ListTile(
                    leading: todo.completed
                        ? const Icon(Icons.check_box_outlined)
                        : const Icon(Icons.check_box_outline_blank_outlined),
                    title: Text(todo.title),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}