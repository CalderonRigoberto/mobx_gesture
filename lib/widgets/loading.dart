import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import '../store/todos_store.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key, required this.store}) : super(key: key);

  final TodosStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => store.fetchTodosFuture.status == FutureStatus.pending
          ? Center(
              child: Lottie.network(
                  'https://assets5.lottiefiles.com/packages/lf20_a9xyhp9v.json'),
            )
          : Container(),
    );
  }
}