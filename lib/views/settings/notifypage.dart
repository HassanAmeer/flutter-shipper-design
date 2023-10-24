import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/materialcolors.dart';

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: MaterialColors.primaryColor,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                controller: ScrollController(),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Dismissible(
                        onDismissed: (direction) {},
                        background: Container(
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.18),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.delete_forever,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.35 /
                                      1,
                                ),
                                const Icon(
                                  Icons.delete_forever,
                                  color: Colors.red,
                                )
                              ]),
                        ),
                        key: GlobalKey(),
                        child: ExpansionTile(
                          backgroundColor: Colors.white,
                          leading: const Icon(Icons.notifications_active),
                          title: const Text('Your Package is Delivered'),
                          subtitle: Text('10/10/2023',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color:
                                        Colors.grey.shade600.withOpacity(0.8),
                                  )),
                          children: [
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.25 /
                                        1,
                                    child: Text(
                                      'Package No: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    ' | ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '7823',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            color: Colors.grey,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.25 /
                                        1,
                                    child: Text(
                                      'Listing Date: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    ' | ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: Colors.grey),
                                  ),
                                  Text(
                                    '10/10/2023',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            color: Colors.grey,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.25 /
                                        1,
                                    child: Text(
                                      'Service Charges: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    ' | ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '\$200',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            color: Colors.grey,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.25 /
                                        1,
                                    child: Text(
                                      'Status: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    ' | ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                          color: Colors.grey,
                                        ),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 4),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Delivered',
                                              style: TextStyle(
                                                  color: Colors.green.shade700),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Icon(
                                              Icons.check,
                                              color: Colors.green.shade800,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                      )),
                                  // Text(
                                  //   'Rejected',
                                  //   style: Theme.of(context)
                                  //       .textTheme
                                  //       .labelLarge!
                                  //       .copyWith(
                                  //         color: Colors.deepOrange,
                                  //         letterSpacing: 1,
                                  //       ),
                                  // ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.25 /
                                        1,
                                    child: Text(
                                      'Total: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    ' | ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                          color: Colors.grey,
                                        ),
                                  ),
                                  Text(
                                    '\$ 200 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
