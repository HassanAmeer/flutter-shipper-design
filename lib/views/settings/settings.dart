import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shipper/utils/colors/materialcolors.dart';
import 'package:shipper/views/users/profile.dart';
import '../../resources/assets.dart';
import '../../services/widgets/logout.dart';
import 'feedback.dart';
import 'history.dart';
import 'notifypage.dart';
import 'support.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        // backgroundColor: MaterialColors.primaryColor,
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade50),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              leading: Transform.scale(
                scale: 1.3,
                child: CircleAvatar(
                  backgroundColor:
                      MaterialColors.primaryColor[100]!.withOpacity(0.7),
                  child: const Icon(
                    Icons.person_4,
                    color: MaterialColors.primaryColor,
                  ),
                ),
              ),
              title: const Text('John'),
              subtitle: const Text('john@gmail.com'),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit_outlined, color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          ListView(
            shrinkWrap: true,
            controller: ScrollController(),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Language',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey.shade700)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: CupertinoListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotifyPage(),
                      ),
                    );
                  },
                  backgroundColor: Colors.white,
                  // leading: Icon(
                  //   Icons.notifications_on_outlined,
                  //   color: MaterialColors.primaryColor.withOpacity(0.5),
                  // ),
                  title: Text(
                    'Selected',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButton(
                        icon: Icon(
                          Icons.keyboard_double_arrow_down_outlined,
                          color: Colors.grey.shade400,
                        ),
                        iconSize: 20,
                        padding: const EdgeInsets.all(0),
                        borderRadius: BorderRadius.circular(10),
                        hint: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.08 /
                                        1,
                                    child: Opacity(
                                        opacity: 0.5,
                                        child: Image.asset(Assets.eng))),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text('Eng'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        elevation: 80,
                        // value: 1,
                        dropdownColor: MaterialColors.primaryColor[100],
                        onChanged: (value) {},
                        items: [
                          DropdownMenuItem(
                            value: 1,
                            onTap: () {},
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08 /
                                                1,
                                        child: Image.asset(Assets.eng)),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text('Eng'),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: MaterialColors.primaryColor[200],
                                ),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            onTap: () {},
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08 /
                                                1,
                                        child: Image.asset(Assets.ru)),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text('Ru'),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: MaterialColors.primaryColor[200],
                                ),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            onTap: () {},
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08 /
                                                1,
                                        child: Image.asset(Assets.china)),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text('zh-cn'),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: MaterialColors.primaryColor[200],
                                ),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            onTap: () {},
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08 /
                                                1,
                                        child: Image.asset(Assets.tur)),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text('Tur'),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: MaterialColors.primaryColor[200],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 12.0),
                      //   child: Icon(Icons.arrow_forward_ios,
                      //       color: Colors.grey.shade500),
                      // ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('General',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey.shade700)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: CupertinoListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotifyPage(),
                      ),
                    );
                  },
                  backgroundColor: Colors.white,
                  // leading: Icon(
                  //   Icons.notifications_on_outlined,
                  //   color: MaterialColors.primaryColor.withOpacity(0.5),
                  // ),
                  title: Text(
                    'Notifications',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Text('')
                      // Icon(
                      //   Icons.notifications_on_outlined,
                      //   color: MaterialColors.primaryColor.withOpacity(0.5),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: CupertinoListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HistoryPage(),
                        ),
                      );
                    },
                    backgroundColor: Colors.white,
                    title: Text(
                      'History',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.grey),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Icon(
                        //   Icons.notifications_on_outlined,
                        //   color: MaterialColors.primaryColor.withOpacity(0.5),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: CupertinoListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomerSupportPage(),
                        ),
                      );
                    },
                    backgroundColor: Colors.white,
                    title: Text(
                      'Customer Support',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.grey),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Icon(
                        //   Icons.notifications_on_outlined,
                        //   color: MaterialColors.primaryColor.withOpacity(0.5),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Share',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey.shade700)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: CupertinoListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FeedbackPage(),
                        ),
                      );
                    },
                    backgroundColor: Colors.white,
                    title: Text(
                      'Feedback',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.grey),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Icon(
                        //   Icons.notifications_on_outlined,
                        //   color: MaterialColors.primaryColor.withOpacity(0.5),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //   child: Text('Exit',
              //       style: Theme.of(context)
              //           .textTheme
              //           .titleMedium!
              //           .copyWith(color: Colors.grey.shade700)),
              // ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: CupertinoListTile(
                    onTap: () {
                      Service.logoutF(context);
                    },
                    backgroundColor: Colors.white,
                    title: Text(
                      'Logout',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.deepOrange),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Icon(
                        //   Icons.notifications_on_outlined,
                        //   color: MaterialColors.primaryColor.withOpacity(0.5),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
