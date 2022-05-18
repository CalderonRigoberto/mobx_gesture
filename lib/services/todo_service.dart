import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../models/todo.dart';

class TodoService {
  final String _url = 'jsonplaceholder.typicode.com';

  Future<List<Todo>> getTodos() async {
    final url = Uri.http(_url, '/todos', {'userId': '1'});

    final response = await Future.delayed(
        const Duration(seconds: 2), () async => await http.get(url));

    final List<dynamic> decodedData = convert.jsonDecode(response.body);

    return decodedData.map((e) => Todo.fromJson(e)).toList();
  }
}
