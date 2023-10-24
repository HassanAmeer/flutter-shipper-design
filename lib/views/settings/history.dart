import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shipper/utils/colors/materialcolors.dart';

import '../../resources/assets.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('History'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: MaterialColors.primaryColor,
        onPressed: () {},
        icon: const Icon(
          Icons.add_to_photos,
          color: Colors.white,
        ),
        label: const Text(
          'Add New',
          style: TextStyle(color: Colors.white),
        ),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: loading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              controller: ScrollController(),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    controller: ScrollController(),
                    itemCount: 20,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.21 /
                                          1,
                                      child: Image.network(
                                        'imagelink',
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Container(
                                              decoration: BoxDecoration(
                                                  color: MaterialColors
                                                      .primaryColor[100]!
                                                      .withOpacity(0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Image.asset(
                                                  Assets.notfoundt));
                                        },
                                      ),
                                    ),
                                    title: Text('main title',
                                        maxLines: 2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: Colors.black
                                                    .withOpacity(0.7))),
                                    subtitle: Text('FTL',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                                color: MaterialColors
                                                    .primaryColor[200])),
                                    trailing: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.17 /
                                          1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04 /
                                              1,
                                      child: TextButton(
                                          onPressed: () {
                                            listingDetailsSheetF(context);
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    MaterialColors.primaryColor
                                                        .withOpacity(0.1)),
                                            shape: MaterialStateProperty.all(
                                                BeveledRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                          ),
                                          child: Text(
                                            'View',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: MaterialColors
                                                        .primaryColor.shade400),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                        Text(
                                          'Rejected',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                color: Colors.deepOrange,
                                                letterSpacing: 1,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Future<dynamic> listingDetailsSheetF(BuildContext context) {
    return showFlexibleBottomSheet(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      // barrierColor: Colors.deepOrange
      //     .withOpacity(0.3),
      builder: (
        BuildContext context,
        ScrollController scrollController,
        double bottomSheetOffset,
      ) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListView(
              controller: scrollController,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Container(
                    height: 5,
                    width: 50,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'imagelink',
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                            decoration: BoxDecoration(
                                color: MaterialColors.primaryColor[100]!
                                    .withOpacity(0.4),
                                borderRadius: BorderRadius.circular(7)),
                            child: Image.asset(Assets.notfoundt));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200,
                      title: const Text('title'),
                      // trailing: Text(
                      //     redeemsdata[
                      //         'resturant_name']),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200,
                      title: const Text('Truck Type'),
                      trailing: const Text('FTL'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200,
                      title: const Text('From'),
                      trailing: const Text('USA .sds'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200,
                      title: const Text('To Location'),
                      trailing: const Text('USA ....asjk'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200,
                      leading: Image.network(
                        'imagelink',
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: MaterialColors.primaryColor[100]!
                                      .withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Image.asset(Assets.notfoundt));
                        },
                      ),
                      title: const Text('item name'),
                      trailing: const Text('vehicle'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200,
                      title: const Text('Package Number'),
                      trailing: const Text('7834'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Center(
                      child: Container(
                          color: Colors.grey.shade50,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'User Details',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                      title: const Text('User Name'),
                      trailing: const Text('name'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                      title: const Text('User Email'),
                      trailing: const Text('email@gmail.com'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Center(
                      child: Container(
                          color: Colors.grey.shade50,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'OTHERS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                      title: const Text('Created Date '),
                      trailing: const Text('10/10/2023'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                      title: const Text('Status '),
                      trailing: Container(
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  'Delivered',
                                  style:
                                      TextStyle(color: Colors.green.shade700),
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
                    ),
                  ),
                ),
                Stack(
                  children: [
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Center(
                      child: Container(
                          color: Colors.grey.shade50,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Total Charges',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: CupertinoListTile(
                      backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                      title: const Text('\$ 200 '),
                      trailing: Container(
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  'Paid',
                                  style:
                                      TextStyle(color: Colors.green.shade700),
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      anchors: [0, 0.6, 1],
      isSafeArea: true,
    );
  }
}
