import 'package:flutter/foundation.dart';

class Task {
  final String id;
  final String taskName;
  final DateTime deadLine;
  bool isCompleted;

  Task(
      {@required this.id,
      @required this.taskName,
      this.deadLine,
      this.isCompleted = false});
}
