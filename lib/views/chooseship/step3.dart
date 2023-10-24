import 'package:flutter/material.dart';
import '../../resources/assets.dart';
import '../../utils/colors/materialcolors.dart';
import '../../widgets/steper.dart';
import 'step1.dart';
import 'step2.dart';
import 'step4.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  List itemslist = [
    {
      'title': 'Furniture',
      'image': 'assets/images/sofa.png',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/washingmachine.png',
    },
    {
      'title': 'Home Electronics',
      'image': 'assets/images/speaker.png',
    },
    {
      'title': 'Outdoor Equipment',
      'image': 'assets/images/motorcycle1.png',
    },
    {
      'title': 'Sports Equipment',
      'image': 'assets/images/sports.png',
    },
    {
      'title': 'Art & Glass',
      'image': 'assets/images/art.png',
    },
    {
      'title': 'Piano Equipments',
      'image': 'assets/images/piano.png',
    },
    {
      'title': 'Others',
      'image': 'assets/images/othersbox.png',
    },
  ];

  int selectedindex = 4;
  int currentStep = 3;

  String selecteditemname = 'Outdoor Equipment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: MaterialColors.primaryColor,
        leading: const Text(''),
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
                      builder: (context) => const Step4(),
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
                  if (step == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Step1(),
                      ),
                    );
                  } else if (step == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Step2(),
                      ),
                    );
                  }

                  // else if (step == 2) {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const Step3(),
                  //     ),
                  //   );
                  // }
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
                      right: 25,
                      bottom: MediaQuery.of(context).size.height * 0.09 / 1,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2 / 1,
                          child: Image.asset(Assets.loadder))),
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
                                'Choose Items',
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
                                  trailing: Text(
                                    '$selecteditemname',
                                    style: const TextStyle(
                                        color: MaterialColors.primaryColor),
                                  )),
                            ),
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
              child: ListView.builder(
                itemCount: itemslist.length,
                controller: ScrollController(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 4),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                          selecteditemname = itemslist[index]['title'];
                        });
                      },
                      child: Container(
                        // color: Colors.grey.shade200,
                        // shape: BeveledRectangleBorder(
                        //     borderRadius: BorderRadius.circular(14)),
                        decoration: BoxDecoration(
                            color: MaterialColors.primaryColor[100]!
                                .withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2,
                                color: selectedindex == index
                                    ? MaterialColors.primaryColor
                                    : Colors.transparent)),
                        child: ListTile(
                          leading: SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 0.15 / 1,
                              child: Image.asset(itemslist[index]['image'])),
                          title: Text(itemslist[index]['title']),
                          trailing: selectedindex == index
                              ? const Icon(
                                  Icons.check,
                                  color: MaterialColors.primaryColor,
                                )
                              : const Icon(
                                  Icons.check,
                                  color: Colors.transparent,
                                ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
