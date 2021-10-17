import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolite/providers/settingsProvider.dart';
import 'package:todolite/providers/taskManagerProvider.dart';
import 'package:todolite/screens/home_screen.dart';
import 'package:todolite/services/android_notification.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => TaskManagerProvider()),
        ChangeNotifierProvider(create: (ctx) => SettingsProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    TaskReminder().initializeNotification(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
        builder: (ctx, settings, child) => MaterialApp(
              title: "TodoLite",
              home: HomeScreen(),
              themeMode:
                  settings.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
              theme: ThemeData(
                  backgroundColor: Colors.white,
                  primaryColor: Colors.white,
                  accentColor: Colors.grey[900],
                  iconTheme: IconThemeData(
                    color: Colors.black,
                  ),
                  textTheme: TextTheme(
                      subtitle1: TextStyle(
                        color: Colors.grey[900],
                      ),
                      headline1: TextStyle(
                        color: Colors.black,
                      ))),
              darkTheme: ThemeData(
                  backgroundColor: Colors.grey[900],
                  primaryColor: Colors.grey[900],
                  accentColor: Colors.black87,
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                  textTheme: TextTheme(
                      subtitle1: TextStyle(
                        color: Colors.grey,
                      ),
                      headline1: TextStyle(
                        color: Colors.white,
                      ))),
            ));
  }
}
