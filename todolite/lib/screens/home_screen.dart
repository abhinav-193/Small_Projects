import 'package:flutter/material.dart';
import 'package:todolite/screens/add_task_screen.dart';

import 'package:todolite/widgets/app_bar.dart';
import 'package:todolite/widgets/todo_tasks.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('rebuilding Home Screen');
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            TodoAppBar(),
            Expanded(
              child: TodoTasks(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          disabledElevation: 0,
          highlightElevation: 0,
          splashColor: Theme.of(context).backgroundColor,
          hoverColor: Theme.of(context).backgroundColor,
          hoverElevation: 0,
          elevation: 0,
          focusElevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => AddTaskScreen(false)))
                .then((value) {});
          },
          child: Icon(
            Icons.add,
            color: Theme.of(context).iconTheme.color,
            size: 40,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
