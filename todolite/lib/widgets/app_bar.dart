import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolite/screens/settings.dart';
import '../providers/taskManagerProvider.dart';

class TodoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      alignment: Alignment.topLeft,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Todo",
            style: TextStyle(
              color: Theme.of(context).textTheme.headline1.color,
              fontSize: 40,
              fontFamily: "Roboto Condensed",
              fontWeight: FontWeight.w900,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: PopupMenuButton(
              child: Icon(
                Icons.more_vert_outlined,
              ),
              enableFeedback: false,
              elevation: 4,
              color: Theme.of(context).backgroundColor,
              itemBuilder: (ctx) => [
                PopupMenuItem(
                  child: Text(
                    "Sort By",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline1.color,
                      fontSize: 20,
                      fontFamily: "Roboto Condensed",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline1.color,
                      fontSize: 20,
                      fontFamily: "Roboto Condensed",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: 1,
                ),
              ],
              onSelected: (value) async {
                if (value == 0) {
                  final _showMenu = await showMenu(
                      color: Theme.of(context).backgroundColor,
                      context: context,
                      position: RelativeRect.fromLTRB(
                          MediaQuery.of(context).size.width,
                          50,
                          0,
                          MediaQuery.of(context).size.height),
                      items: [
                        PopupMenuItem(
                            value: 0,
                            child: Text(
                              "Date",
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                                fontSize: 20,
                                fontFamily: "Roboto Condensed",
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                        PopupMenuItem(
                            value: 1,
                            child: Text(
                              "Your Order",
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                                fontSize: 20,
                                fontFamily: "Roboto Condensed",
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ]);
                  if (_showMenu == 0) {
                    Provider.of<TaskManagerProvider>(context, listen: false)
                        .sortByDate(true);
                  } else {
                    Provider.of<TaskManagerProvider>(context, listen: false)
                        .sortByDate(false);
                  }
                } else if (value == 1) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => SettingsScreen()));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
