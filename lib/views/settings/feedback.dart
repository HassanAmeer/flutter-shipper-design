import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:shipper/utils/colors/materialcolors.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  List<String> options = [
    "Satisfied",
    "Dissatisfied",
    "Improve Quality",
    "Improve Customers Support",
    "Speed and Efficiency",
    "Delay in Delivery",
    "Damaged Package",
    "Wrong Item Received",
  ];

  String selectedOption = 'Satisfied';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text(
          'Feedback',
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05 / 1,
            vertical: 5),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(MaterialColors.primaryColor),
            shape: MaterialStateProperty.all(BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
          ),
          child: Text(
            'Submit',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white, letterSpacing: 3),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rate Your Reviews',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Are you satisfied with the service',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Divider(),
                      AnimatedRatingStars(
                        initialRating: 3.5,
                        minRating: 0.0,
                        maxRating: 5.0,
                        filledColor: MaterialColors.primaryColor,
                        emptyColor: Colors.grey,
                        filledIcon: Icons.star,
                        halfFilledIcon: Icons.star_half,
                        emptyIcon: Icons.star_border,
                        onChanged: (double rating) {
                          // Handle the rating change here
                          // print('Rating: $rating');
                        },
                        displayRatingValue: true,
                        interactiveTooltips: true,
                        customFilledIcon: Icons.star,
                        customHalfFilledIcon: Icons.star_half,
                        customEmptyIcon: Icons.star_border,
                        starSize: 30.0,
                        animationDuration: const Duration(milliseconds: 300),
                        animationCurve: Curves.easeInOut,
                        readOnly: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              thickness: 1,
            ),
            //////////////////
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text('Tell Us What Can Be Improved ?'),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Wrap(
                      spacing: 4.0,
                      runSpacing: 1.0,
                      children: options.map((option) {
                        return ChoiceChip(
                          checkmarkColor: Colors.grey.shade300.withOpacity(0.7),
                          selectedColor: selectedOption == option
                              ? MaterialColors.primaryColor
                              : Colors.grey.shade500,
                          label: Text(option,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color: selectedOption == option
                                          ? Colors.white
                                          : Colors.black)),
                          selected: selectedOption == option,
                          onSelected: (selected) {
                            setState(() {
                              selectedOption = (selected ? option : null)!;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            //////////////////
            const Divider(
              indent: 15,
              endIndent: 15,
              thickness: 1,
            ),
            ////////////////// start for input box
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                minLines: 4,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'feedback',
                  hintText: 'Write Something.',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
