import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolite/providers/settingsProvider.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  void contactMe() async {
    try {
      await launch("mailto:akshajdevkv@gmail.com");
    } catch (error) {
      print(error);
    }
  }

  void bugReport() async {
    try {
      await launch("mailto:akshajdevkv@gmail.com?subject=TodoLite Bug Report");
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Theme.of(context).textTheme.headline1.color,
            fontSize: 28,
            fontFamily: "Roboto Condensed",
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.nightlight_round,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "Enable Dark Mode",
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline1.color,
                  fontSize: 20,
                  fontFamily: "Roboto Condensed",
                  fontWeight: FontWeight.w100),
            ),
            trailing: Consumer<SettingsProvider>(
              builder: (ctx, settings, child) {
                return Switch(
                    activeColor: Theme.of(context).iconTheme.color,
                    value: settings.isDarkModeEnabled,
                    onChanged: (value) {
                      Provider.of<SettingsProvider>(context, listen: false)
                          .toggleThemeMode();
                    });
              },
            ),
          ),
          ListTile(
            onTap: () {
              contactMe();
            },
            leading: Icon(
              Icons.contact_support_rounded,
              size: 30,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "Contact Me",
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline1.color,
                  fontSize: 20,
                  fontFamily: "Roboto Condensed",
                  fontWeight: FontWeight.w100),
            ),
          ),
          ListTile(
            onTap: () {
              bugReport();
            },
            leading: Icon(
              Icons.bug_report_outlined,
              size: 30,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "Report Bug",
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline1.color,
                  fontSize: 20,
                  fontFamily: "Roboto Condensed",
                  fontWeight: FontWeight.w100),
            ),
          ),
          ListTile(
            onTap: () {
              showAboutDialog(
                  applicationLegalese: "© All Rights Reserved",
                  context: context,
                  applicationVersion: "1.0.0",
                  applicationName: "TodoLite",
                  applicationIcon: Image.asset(
                    "assets/app_icon.png",
                    height: 50,
                    width: 50,
                  ));
            },
            leading: Icon(
              Icons.info,
              size: 30,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              "About TodoLite",
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline1.color,
                  fontSize: 20,
                  fontFamily: "Roboto Condensed",
                  fontWeight: FontWeight.w100),
            ),
          ),
        ],
      )),
    );
  }
}
