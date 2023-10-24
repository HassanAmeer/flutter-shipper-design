import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shipper/views/chooseship/step1.dart';
import 'package:shipper/views/home.dart';
import 'package:shipper/views/settings/notifypage.dart';
import '../services/widgets/logout.dart';
import '../utils/colors/materialcolors.dart';
import 'drawer.dart';
import 'settings/settings.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  _BottomNavBarPageState createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;

  // Define the pages that you want to switch between
  List<String> listoftitles = [
    'Shippers',
    'Performance',
    'History',
    'List New Packages'
  ];
  List<Widget> listofpages = [const HomePage(), Step1()];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Service.logoutF(context);
      },
      child: Scaffold(
        drawer: const DrawerFb1(),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.sort_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          backgroundColor: MaterialColors.primaryColor,
          title: Text(
            listoftitles[_currentIndex],
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: listofpages[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: const Offset(0, -6),
              ),
            ],
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: _currentIndex == 0
                      ? const Icon(
                          Icons.home,
                          color: MaterialColors.primaryColor,
                        )
                      : const Icon(Icons.home_outlined),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                ),
                IconButton(
                  icon: _currentIndex == 1
                      ? const Icon(
                          Icons.notifications,
                          color: MaterialColors.primaryColor,
                        )
                      : const Icon(Icons.notifications_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotifyPage(),
                      ),
                    );
                    // setState(() {
                    //   _currentIndex = 1;
                    // });
                  },
                ),
                IconButton(
                  icon: _currentIndex == 2
                      ? const Icon(
                          Icons.settings,
                          color: MaterialColors.primaryColor,
                        )
                      : const Icon(Icons.settings_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                    // setState(() {
                    //   _currentIndex = 2;
                    // });
                  },
                ),
                const Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: MaterialColors.primaryColor,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Step1(),
              ),
            );
          },
          tooltip: 'Add New Packages',
          child: const Icon(
            Icons.playlist_add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
