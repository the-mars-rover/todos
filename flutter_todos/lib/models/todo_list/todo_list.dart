import 'package:flutter_todos/models/todo_item/todo_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list.freezed.dart';
part 'todo_list.g.dart';

@freezed
abstract class TodoList with _$TodoList {
  factory TodoList({
    String uuid,
    @required String userUuid,
    @required String title,
  }) = _TodoList;

  factory TodoList.fromJson(Map<String, dynamic> json) =>
      _$TodoListFromJson(json);
}
