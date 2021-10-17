import 'package:flutter/foundation.dart';
import 'package:todolite/services/android_notification.dart';
import 'package:todolite/services/db_helper.dart';

import '../models/taskmodel.dart';
import 'dart:math';

class TaskManagerProvider extends ChangeNotifier {
  bool _sortByDate = false;
  bool initialized = false;
  List<Task> _taskItems = [];

  List<Task> get taskItems {
    if (!initialized) {
      DbHelper().getData().then((value) {
        _taskItems = value;
        initialized = true;
        notifyListeners();
      });
    }
    if (_sortByDate) {
      final userTaskItems =
          _taskItems.where((element) => element.deadLine != null).toList();
      userTaskItems.sort((a, b) => a.deadLine.compareTo(b.deadLine));
      return userTaskItems;
    }
    return _taskItems;
  }

  int getIdFromString(String id) {
    int notificationId = 0;
    id.codeUnits.forEach((element) => notificationId += element);
    return notificationId;
  }

  void sortByDate(bool value) {
    if (value) {
      _sortByDate = true;
    } else {
      _sortByDate = false;
    }
    notifyListeners();
  }

  bool get isSortByDate {
    return _sortByDate;
  }

  String generateTaskId() {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    String randomId =
        List.generate(8, (index) => chars[Random().nextInt(chars.length)])
            .join("");
    return randomId;
  }

  void toggleTask(int index) {
    _taskItems.elementAt(index).isCompleted =
        !_taskItems.elementAt(index).isCompleted;
    notifyListeners();
  }

  void addTaskItem(String taskName, [DateTime deadLine]) {
    final String generatedTaskId = generateTaskId();
    print(generatedTaskId);
    _taskItems
        .add(Task(id: generatedTaskId, taskName: taskName, deadLine: deadLine));

    DbHelper().insertData(
        Task(id: generatedTaskId, taskName: taskName, deadLine: deadLine));

    if (deadLine != null) {
      //get unique integer id from string task id (has function)
      final generatedNotificationId = getIdFromString(generatedTaskId);
      TaskReminder()
          .displayNotification(generatedNotificationId, taskName, deadLine);
    }

    notifyListeners();
  }

  void removeTaskItem(String id) async {
    _taskItems.removeWhere((element) => element.id == id);
    DbHelper().deleteTask(id);

    try {
      await TaskReminder().cancelNotification(id);
    } catch (error) {
      print(error);
    }
    notifyListeners();
  }

  void updateTaskItem(String taskName, DateTime deadLine, Task previousTask) {
    _taskItems[_taskItems.indexOf(previousTask)] =
        Task(deadLine: deadLine, id: previousTask.id, taskName: taskName);
    DbHelper().insertData(
        Task(id: previousTask.id, taskName: taskName, deadLine: deadLine));
    try {
      TaskReminder().cancelNotification(previousTask.id);
    } catch (error) {
      print(error);
    }
    if (deadLine != null) {
      final generatedNotificationId = getIdFromString(previousTask.id);
      TaskReminder()
          .displayNotification(generatedNotificationId, taskName, deadLine);
    }
    notifyListeners();
  }

  void rearrangeList(List<Task> newItems) {
    _taskItems.clear();
    _taskItems.addAll(newItems);
    notifyListeners();
  }
}
