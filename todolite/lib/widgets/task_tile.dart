import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:todolite/providers/settingsProvider.dart';

import 'package:todolite/screens/add_task_screen.dart';
import '../models/taskmodel.dart';
import 'package:provider/provider.dart';
import '../providers/taskManagerProvider.dart';

class TaskTile extends StatelessWidget {
  final int index;
  final Task task;
  TaskTile({this.index, this.task});

  String formatDateTime(DateTime datetime) {
    //convert datetime into readable format
    final today = DateTime.now();
    if (datetime.day == today.day) {
      //example: Today at 8:00p.m
      return "Today at ${DateFormat("jm").format(datetime)}";
    } else if (datetime.day - 1 == today.day) {
      return "Tommorow at ${DateFormat("jm").format(datetime)}";
    } else {
      return "${DateFormat("d E LLL").format(datetime)} at ${DateFormat("jm").format(datetime)}";
    }
  }

  Future<AudioPlayer> playSound() async {
    AudioCache cache = new AudioCache();
    return await cache.play("sounds/drip.wav",
        mode: PlayerMode.LOW_LATENCY, volume: 0.5);
  }

  @override
  Widget build(BuildContext context) {
    final bool _isDraggable = true;
    return _isDraggable
        ? Handle(
            //widget that enables dragging
            delay: Duration(milliseconds: 300),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              selectedTileColor: Theme.of(context).primaryColor,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => AddTaskScreen(
                          true,
                          task: task,
                        )));
              },
              leading: Consumer<SettingsProvider>(
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                  child: task.isCompleted
                      ? Icon(
                          Icons.check,
                          size: 25,
                          color: Theme.of(context).iconTheme.color,
                          key: ValueKey("1"),
                        )
                      : Icon(
                          Icons.panorama_fish_eye,
                          size: 23,
                          color: Theme.of(context).iconTheme.color,
                          key: ValueKey("2"),
                        ),
                ),
                builder: (ctx, settings, child) => IconButton(
                    onPressed: () {
                      Provider.of<TaskManagerProvider>(context, listen: false)
                          .toggleTask(index);
                      Provider.of<TaskManagerProvider>(context, listen: false)
                          .removeTaskItem(task.id);
                    },
                    icon: child),
              ),
              subtitle: task.deadLine != null
                  ? Text(
                      '${formatDateTime(task.deadLine)}',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.subtitle1.color,
                      ),
                    )
                  : null,
              title: Text(
                "${task.taskName}",
                style: TextStyle(
                  fontFamily: "Roboto Condensed",
                  color: Theme.of(context).textTheme.headline1.color,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
          )
        : ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            selectedTileColor: Theme.of(context).primaryColor,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => AddTaskScreen(
                        true,
                        task: task,
                      )));
            },
            leading: IconButton(
              onPressed: () {
                Provider.of<TaskManagerProvider>(context, listen: false)
                    .toggleTask(index);
                Provider.of<TaskManagerProvider>(context, listen: false)
                    .removeTaskItem(task.id);
              },
              icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: task.isCompleted
                    ? Icon(
                        Icons.check,
                        size: 25,
                        color: Theme.of(context).accentColor,
                        key: ValueKey("1"),
                      )
                    : Icon(
                        Icons.panorama_fish_eye,
                        size: 23,
                        color: Theme.of(context).accentColor,
                        key: ValueKey("2"),
                      ),
              ),
            ),
            subtitle: task.deadLine != null
                ? Text(
                    '${formatDateTime(task.deadLine)}',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle1.color,
                    ),
                  )
                : null,
            title: Text(
              "${task.taskName}",
              style: TextStyle(
                fontFamily: "Roboto Condensed",
                color: Theme.of(context).textTheme.headline1.color,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          );
  }
}
