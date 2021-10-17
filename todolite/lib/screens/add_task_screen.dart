import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todolite/providers/settingsProvider.dart';
import 'package:todolite/providers/taskManagerProvider.dart';
import '../models/taskmodel.dart';

class AddTaskScreen extends StatefulWidget {
  final bool isUpdateTask;
  final Task task;

  AddTaskScreen(this.isUpdateTask, {this.task});
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController _textEditingController = TextEditingController();

  DateTime _deadline = DateTime.now().add(Duration(minutes: 1));

  bool _isChanged = false;
  bool _chooseDate = false;
  @override
  void initState() {
    if (widget.isUpdateTask) {
      _textEditingController.text = widget.task.taskName;
      _chooseDate = true;

      if (widget.task.deadLine == null) {
        _chooseDate = false;
      } else {
        _deadline = widget.task.deadLine;
      }
      _isChanged = true;
    }
    print("Using for adding Task is ${!widget.isUpdateTask}");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SafeArea(
            child: IconButton(
                splashRadius: 17,
                icon: Icon(
                  Icons.close,
                  size: 30,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () => Navigator.of(context).pop(false)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    controller: _textEditingController,
                    onChanged: (a) {
                      if (_textEditingController.text == "") {
                        setState(() {
                          _isChanged = false;
                        });
                      } else {
                        if (!_isChanged) {
                          setState(() {
                            _isChanged = true;
                          });
                        }
                      }
                    },
                    style: TextStyle(
                      fontFamily: "Roboto Condensed",
                      color: Theme.of(context).textTheme.headline1.color,
                      decoration: TextDecoration.none,
                      height: 1.5,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        hintText: "Type Something....",
                        hintStyle: TextStyle(
                          color: Theme.of(context).textTheme.headline1.color,
                        ),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SwitchListTile(
                          activeColor: Theme.of(context).iconTheme.color,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                          value: _chooseDate,
                          title: Text(
                            "Choose Date & Time",
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                                fontSize: 20,
                                fontFamily: "Roboto Condensed",
                                fontWeight: FontWeight.bold),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _chooseDate = value;
                            });
                          }),
                      ListTile(
                        enabled: _chooseDate,
                        contentPadding: EdgeInsets.all(0),
                        minLeadingWidth: 0,
                        leading: Icon(
                          Icons.date_range,
                          color: _chooseDate
                              ? Theme.of(context).iconTheme.color
                              : Colors.grey,
                        ),
                        title: Text(
                          "${DateFormat("EEEE d LLLL y").format(_deadline)}",
                          style: TextStyle(
                              color: _chooseDate
                                  ? Theme.of(context).textTheme.headline1.color
                                  : Colors.grey,
                              fontSize: 18,
                              fontFamily: "Roboto Condensed",
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2077),
                            builder: (context, child) {
                              return Theme(
                                data: Provider.of<SettingsProvider>(context,
                                            listen: false)
                                        .isDarkModeEnabled
                                    ? ThemeData.dark()
                                    : ThemeData.light(),
                                child: child,
                              );
                            },
                          ).then((value) {
                            if (value != null) {
                              setState(() {
                                _deadline = value;
                              });
                            }
                          });
                        },
                      ),
                      ListTile(
                        enabled: _chooseDate,
                        contentPadding: EdgeInsets.all(0),
                        minLeadingWidth: 0,
                        leading: Icon(
                          Icons.access_time,
                          color: _chooseDate
                              ? Theme.of(context).iconTheme.color
                              : Colors.grey,
                        ),
                        title: Text(
                          "${DateFormat("jm").format(_deadline)}",
                          style: TextStyle(
                              color: _chooseDate
                                  ? Theme.of(context).textTheme.headline1.color
                                  : Colors.grey,
                              fontSize: 18,
                              fontFamily: "Roboto Condensed",
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          showTimePicker(
                            context: context,
                            builder: (context, child) {
                              return Theme(
                                data: Provider.of<SettingsProvider>(context,
                                            listen: false)
                                        .isDarkModeEnabled
                                    ? ThemeData.dark()
                                    : ThemeData.light(),
                                child: child,
                              );
                            },
                            initialTime: TimeOfDay(
                                hour: _deadline.hour, minute: _deadline.minute),
                          ).then((value) {
                            if (value != null) {
                              setState(() {
                                _deadline = DateTime(
                                    _deadline.year,
                                    _deadline.month,
                                    _deadline.day,
                                    value.hour,
                                    value.minute);
                              });
                            }
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25, right: 5),
            alignment: Alignment.center,
            child: IconButton(
                alignment: Alignment.center,
                splashRadius: 30,
                icon: Container(
                  child: _isChanged
                      ? Icon(
                          Icons.check_outlined,
                          size: 40,
                        )
                      : Icon(
                          Icons.check_outlined,
                          color: Colors.grey,
                          size: 40,
                        ),
                ),
                onPressed: () {
                  //checks whether the input field is empty or not
                  if (widget.isUpdateTask) {
                    if (_textEditingController.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please Enter A Task Name")));
                    } else {
                      if (_deadline != null) {
                        if (_deadline.isAfter(DateTime.now())) {
                          Provider.of<TaskManagerProvider>(context,
                                  listen: false)
                              .updateTaskItem(_textEditingController.text,
                                  _deadline, widget.task);
                          Navigator.of(context).pop(true);
                          _textEditingController.clear();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Please Enter A Valid Date Time")));
                        }
                      } else {
                        Provider.of<TaskManagerProvider>(context, listen: false)
                            .updateTaskItem(_textEditingController.text,
                                _deadline, widget.task);
                        Navigator.of(context).pop(true);
                        _textEditingController.clear();
                      }
                    }
                  } else {
                    if (_isChanged) {
                      if (_chooseDate) {
                        if (_deadline.isAfter(DateTime.now())) {
                          Provider.of<TaskManagerProvider>(context,
                                  listen: false)
                              .addTaskItem(
                                  _textEditingController.text, _deadline);

                          Navigator.of(context).pop(true);
                          _textEditingController.clear();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Please Enter A Valid Date Time")));
                        }
                      } else {
                        Provider.of<TaskManagerProvider>(context, listen: false)
                            .addTaskItem(_textEditingController.text);

                        Navigator.of(context).pop(true);
                        _textEditingController.clear();
                      }
                    }
                  }
                }),
          ),
        ],
      ),
    );
  }
}
