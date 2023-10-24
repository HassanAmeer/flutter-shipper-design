import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utils/colors/materialcolors.dart';

class Service {
  static logoutF(context) async {
    bool quit = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: const Text('Are you sure you want to quit?'),
          actions: <Widget>[
            TextButton(
              child: Text('No',
                  style: TextStyle(
                      color: MaterialColors.primaryColor.withOpacity(0.5))),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      MaterialColors.primaryColor.withOpacity(0.1)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)))),
              child: Text('Yes',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: MaterialColors.primaryColor)),
              onPressed: () async {
                SystemNavigator.pop();
              },
            ),
          ],
        );
      },
    );

    // If the user wants to quit, close the app
    if (quit == true) {
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }
}
