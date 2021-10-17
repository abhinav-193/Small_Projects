import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart';
import 'package:todolite/models/taskmodel.dart';

class DbHelper {
  Future database() async {
    var databasesPath = await sql.getDatabasesPath();
    String path = join(databasesPath, "tasks.db");
    sql.Database db = await sql.openDatabase(path, version: 1,
        onCreate: (sql.Database db, int i) async {
      await db.execute(
          "CREATE TABLE Tasks(id TEXT PRIMARY KEY, taskName Text NOT NULL,deadline TEXT)");
    });
    return db;
  }

  Future insertData(Task task) async {
    sql.Database db = await database();

    db.insert(
      "Tasks",
      {
        "id": "${task.id}",
        "taskName": "${task.taskName}",
        "deadline": "${task.deadLine}",
      },
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  Future deleteTaskDatabase() async {
    var databasesPath = await sql.getDatabasesPath();
    String path = join(databasesPath, "tasks.db");
    sql.deleteDatabase(path);
  }

  Future<void> deleteTask(String id) async {
    sql.Database db = await database();
    db.delete("Tasks", where: "id == ?", whereArgs: [id]);
  }

  Future<List<Task>> getData() async {
    sql.Database db = await database();
    List<Map> result = await db.query("Tasks");
    List<Task> taskItems = result
        .map(
          (task) => Task(
            id: task["id"],
            taskName: task["taskName"],
            deadLine: DateTime.tryParse(task["deadline"]),
          ),
        )
        .toList();
    return taskItems;
  }
}
