import 'package:flutter/material.dart';
import '../../utils/colors/materialcolors.dart';
import '../../widgets/steper.dart';
import 'step2.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  List trucksList = [
    {
      'name': 'LCV',
      'image': 'assets/images/truck1.png',
    },
    {
      'name': 'Trailer',
      'image': 'assets/images/truck2.png',
    },
    {
      'name': 'Container',
      'image': 'assets/images/truck3.png',
    },
    {
      'name': 'Hyva',
      'image': 'assets/images/truck4.png',
    },
    {
      'name': 'Truck',
      'image': 'assets/images/truck5.png',
    },
  ];

  int selectedindex = 4;

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: MaterialColors.primaryColor,
        leading: const Text(''),
        // title: Text(
        //   'Package Listing Step',
        //   style: TextStyle(color: Colors.grey.shade200, fontSize: 12),
        // ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.06 / 1,
        decoration:
            BoxDecoration(color: Colors.grey.shade200, boxShadow: const [
          BoxShadow(offset: Offset(0, -2), color: Colors.grey, blurRadius: 25)
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Previous',
                  style: TextStyle(color: MaterialColors.primaryColor),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Step2(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                color: MaterialColors.primaryColor,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        // physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1 / 1,
              color: MaterialColors.primaryColor,
              child: SteperWidget(
                activestep: currentStep,
                activestepcolor: MaterialColors.primaryColor[100],
                unactivestepcolor:
                    MaterialColors.primaryColor[300]!.withOpacity(0.8),
                unactivestepnocolor: Colors.grey.shade400,
                activestepnocolor: MaterialColors.primaryColor,
                activelinecolor: Colors.white,
                unactivelinecolor: Colors.grey,
                onStepTapped: (step) {
                  if (step == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Step2(),
                      ),
                    );
                  }

                  // setState(() {
                  //   currentStep = step;
                  // });
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.17 / 1,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.14 / 1,
                    color: MaterialColors.primaryColor,
                  ),
                  Positioned(
                    // bottom: MediaQuery.of(context).size.height * -0.12 / 1,
                    bottom: 0,
                    left: 20,
                    right: 20,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                          child: Row(
                            children: [
                              Text(
                                'Choose Trucks',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09 / 1,
                          width: MediaQuery.of(context).size.width * 0.85 / 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(1, 1),
                                      blurRadius: 6,
                                      color: Colors.grey)
                                ]),
                            child: Transform.translate(
                              offset: const Offset(0, 7),
                              child: ListTile(
                                title: const Text(
                                  'Selected',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.24 /
                                        1,
                                    child: DropdownButton(
                                        borderRadius: BorderRadius.circular(10),
                                        hint: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.fire_truck,
                                                color: MaterialColors
                                                    .primaryColor),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'FTL ',
                                              style: TextStyle(
                                                  color: MaterialColors
                                                      .primaryColor),
                                            ),
                                          ],
                                        ),
                                        iconSize: 20,
                                        icon: Icon(
                                          Icons
                                              .keyboard_double_arrow_down_outlined,
                                          color: Colors.grey.shade400,
                                        ),
                                        elevation: 20,
                                        // value: 1,
                                        dropdownColor:
                                            MaterialColors.primaryColor[700],
                                        onChanged: (value) {},
                                        items: [
                                          DropdownMenuItem(
                                            value: 1,
                                            onTap: () {},
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.fire_truck,
                                                    color: Colors.white),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  'FTL ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          DropdownMenuItem(
                                            value: 2,
                                            onTap: () {},
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.fire_truck_outlined,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  'LTL ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ])),
                              ),
                            ),
                            // child: Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text('Load Types'),
                            //   ],
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: trucksList.length,
                controller: ScrollController(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15 / 1,
                        decoration: BoxDecoration(
                            color: MaterialColors.primaryColor[100]!
                                .withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                            border: selectedindex == index
                                ? Border.all(
                                    width: 2,
                                    color: MaterialColors.primaryColor,
                                  )
                                : const Border()),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.2 / 1,
                                height: MediaQuery.of(context).size.width *
                                    0.17 /
                                    1,
                                child: Image.asset(trucksList[index]['image'])),
                            const SizedBox(height: 3, child: const Divider()),
                            Text(
                              trucksList[index]['name'],
                              style: TextStyle(
                                  color: selectedindex == index
                                      ? Colors.grey.shade900
                                      : Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
