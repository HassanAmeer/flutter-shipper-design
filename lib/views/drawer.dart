import 'package:flutter/material.dart';

import '../utils/colors/materialcolors.dart';
import 'users/profile.dart';

class DrawerFb1 extends StatelessWidget {
  const DrawerFb1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color(0xff4338CA),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: UserAccountsDrawerHeader(
                      otherAccountsPictures: [
                        Transform.scale(
                          scale: 1.8,
                          child: Transform.translate(
                            offset: const Offset(-20, 4),
                            child: const CircleAvatar(
                              child: Icon(Icons.person_4_sharp),
                            ),
                          ),
                        ),
                      ],
                      accountName: const Text('Shipper Name'),
                      accountEmail: Text(
                        'Shipper@gmail.com',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      decoration: const BoxDecoration(
                          color: MaterialColors.primaryColor)),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      const SearchFieldDrawer(),
                      const SizedBox(height: 12),
                      MenuItem(
                        text: 'New Listing',
                        icon: Icons.fire_truck,
                        onClicked: () => selectedItem(context, 0),
                      ),
                      // const SizedBox(height: 5),
                      // MenuItem(
                      //   text: 'LTL Trucks',
                      //   icon: Icons.fire_truck_outlined,
                      //   onClicked: () => selectedItem(context, 1),
                      // ),

                      const SizedBox(height: 5),
                      MenuItem(
                        text: 'History',
                        icon: Icons.update,
                        onClicked: () => selectedItem(context, 3),
                      ),
                      MenuItem(
                        text: 'Notifications',
                        icon: Icons.notifications_outlined,
                        onClicked: () => selectedItem(context, 3),
                      ),
                      const SizedBox(height: 5),
                      MenuItem(
                        text: 'Settings',
                        icon: Icons.settings,
                        onClicked: () => selectedItem(context, 2),
                      ),
                      const Divider(color: Colors.white70),
                      const SizedBox(height: 8),
                      MenuItem(
                        text: 'Support',
                        icon: Icons.headphones,
                        onClicked: () => selectedItem(context, 5),
                      ),
                      MenuItem(
                        text: 'FeedBack',
                        icon: Icons.workspaces_outline,
                        onClicked: () => selectedItem(context, 6),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.exit_to_app_outlined,
                          color: Colors.amber,
                        ),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      // MenuItem(
                      //   text: 'Logout',
                      //   icon: Icons.exit_to_app_outlined,
                      //   onClicked: () => selectedItem(context, 6),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Scaffold(), // Page 1
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Scaffold(), // Page 2
        ));
        break;
    }
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}

class SearchFieldDrawer extends StatelessWidget {
  const SearchFieldDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.white;

    return TextField(
      style: const TextStyle(color: color, fontSize: 14),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(
          Icons.search,
          color: color,
          size: 20,
        ),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
}
