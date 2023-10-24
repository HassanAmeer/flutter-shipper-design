import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/assets.dart';
import '../../utils/colors/materialcolors.dart';

class Step6 extends StatelessWidget {
  const Step6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: MaterialColors.primaryColor,
        title: const Text(
          'Confirm To List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, -2), color: Colors.grey, blurRadius: 25),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MaterialColors.primaryColor)),
                onPressed: () {},
                child: const Text('Confirm To List',
                    style: TextStyle(color: Colors.white)))),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                shrinkWrap: true,
                controller: ScrollController(),
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
                              child: Image.asset('assets/images/sports.png'));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor:
                            MaterialColors.primaryColor[100]!.withOpacity(0.5),
                        title: const Text(
                          'Package Listing name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1),
                        ),
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
                        leading: CircleAvatar(
                          radius: 30,
                          child: Text(
                            'FTL',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(),
                          ),
                        ),
                        title: const Text('Truck Type'),
                        trailing: Row(
                          children: [
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 0.14 / 1,
                              child: Image.asset(
                                Assets.truck3,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(Assets.notfoundt);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor: Colors.grey.shade200,
                        title: const Text('From Location'),
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
                        title: const Text('Package Number'),
                        trailing: const Text('7834'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor: Colors.grey.shade200,
                        title: const Text('Shipping Date'),
                        trailing: const Text('12/10/2023'),
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
                                'Equipment Details',
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
                        trailing: const Text('Sports Equipment'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                        title: const Text('Width'),
                        trailing: const Text('5 Feet'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                        title: const Text('Height'),
                        trailing: const Text('2 Feet'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                        title: const Text('Weight'),
                        trailing: const Text('20 KG'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: CupertinoListTile(
                        backgroundColor: Colors.grey.shade200.withOpacity(0.4),
                        title: const Text('Quantity'),
                        trailing: const Text(' 2 '),
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
                        leading: CircleAvatar(
                          radius: 30,
                          child: Text(
                            'KM',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(),
                          ),
                        ),
                        title: const Text('Charges '),
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
                                    ' \$15 x 10 = \$150',
                                    style:
                                        TextStyle(color: Colors.green.shade700),
                                  ),
                                  // const SizedBox(
                                  //   width: 4,
                                  // ),
                                  // Icon(
                                  //   Icons.check,
                                  //   color: Colors.green.shade800,
                                  //   size: 18,
                                  // )
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
                        title: const Text('\$ 150 '),
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
                                'Pay By',
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
                        padding: const EdgeInsets.all(15),
                        backgroundColor: Colors.grey.shade200,
                        leading: Image.asset(Assets.stripe,
                            errorBuilder: (context, error, stackTrace) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: MaterialColors.primaryColor[100]!
                                      .withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Image.asset(Assets.notfoundt));
                        }),
                        title: const Text('Stripe '),
                        trailing: Icon(
                          Icons.radio_button_checked,
                          color: Colors.green.shade700,
                        ),
                        // trailing: Container(
                        //     decoration: BoxDecoration(
                        //         color: Colors.green.withOpacity(0.2),
                        //         borderRadius: BorderRadius.circular(6)),
                        //     child: Padding(
                        //       padding: const EdgeInsets.symmetric(
                        //           horizontal: 8.0, vertical: 4),
                        //       child: Row(
                        //         children: [
                        //           Text(
                        //             '',
                        //             style:
                        //                 TextStyle(color: Colors.green.shade700),
                        //           ),
                        //           const SizedBox(
                        //             width: 4,
                        //           ),
                        //           Icon(
                        //             Icons.check,
                        //             color: Colors.green.shade800,
                        //             size: 18,
                        //           )
                        //         ],
                        //       ),
                        //     )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
