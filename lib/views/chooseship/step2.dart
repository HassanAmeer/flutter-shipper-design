import 'package:flutter/material.dart';
import '../../resources/assets.dart';
import '../../utils/colors/materialcolors.dart';
import '../../widgets/steper.dart';
import 'step1.dart';
import 'step3.dart';
import 'step4.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  List itemslist = [
    {
      'title': 'Vichle & Boats',
      'subtitle': 'Car , MotorCycle, trailers, Parts',
      'image': 'assets/images/car.png',
    },
    {
      'title': 'Household items',
      'subtitle': 'Furniture, Appliances',
      'image': 'assets/images/washingmachine.png',
    },
    {
      'title': 'Moves',
      'subtitle': 'Appartment, Home, Office',
      'image': 'assets/images/officebox.png',
    },
    {
      'title': 'Freight',
      'subtitle': 'Trcuk load Items',
      'image': 'assets/images/freights.png',
    },
    {
      'title': 'Animals',
      'subtitle': 'Dog, Cats',
      'image': 'assets/images/dog.png',
    },
    {
      'title': 'Others',
      'subtitle': 'Hay Bales, Water Slides, Etc',
      'image': 'assets/images/othersbox.png',
    },
  ];

  int selectedindex = 2;

  int currentStep = 1;

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
                      builder: (context) => const Step3(),
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
                  // Positioned(
                  //     left: 25,
                  //     bottom: MediaQuery.of(context).size.height * 0.09 / 1,
                  //     child: SizedBox(
                  //         width: MediaQuery.of(context).size.width * 0.2 / 1,
                  //         child: Image.asset(Assets.truck3))),
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
                                'What do you want to ship?',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
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
                                  'Select For',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'Container',
                                  style:
                                      TextStyle(color: Colors.green.shade800),
                                ),
                                trailing: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.18 /
                                        1,
                                    child: Transform.translate(
                                        offset: const Offset(0, -5),
                                        child: Image.asset(Assets.truck3))),
                              ),
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
                          leading: Image.asset(itemslist[index]['image']),
                          title: Text(itemslist[index]['title']),
                          subtitle: Text(
                            itemslist[index]['subtitle'],
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.grey),
                          ),
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
