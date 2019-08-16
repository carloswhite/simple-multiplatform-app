import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'settings.dart';
import 'search.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
  const Dashboard();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            title: Text('Support'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('Profile'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        assert(index >= 0 && index <= 2);
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SettingsTab(),
              );
            });
            break;
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SearchTab(),
              );
            });
            break;
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SettingsTab(),
              );
            });
            break;
        }
        return null;
      },
    );
  }
}
