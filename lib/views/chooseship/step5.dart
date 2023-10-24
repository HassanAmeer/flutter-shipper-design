import 'package:flutter/material.dart';
import 'package:shipper/resources/assets.dart';
import '../../utils/colors/materialcolors.dart';
import 'step6.dart';

class Step5 extends StatefulWidget {
  const Step5({Key? key}) : super(key: key);

  @override
  State<Step5> createState() => _Step5State();
}

class _Step5State extends State<Step5> {
  int selectedtruckindex = 2;

  final TextEditingController _fromLocationController = TextEditingController();
  final TextEditingController _toLocationController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();
  DateTime? selectedDate;

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
          ' Location Types',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, -2), color: Colors.grey, blurRadius: 25),
          ],
        ),
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
                      builder: (context) => Step6(),
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text('Charge / KM'),
              trailing: Container(
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '\$ 15',
                          style: TextStyle(color: Colors.green.shade700),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.route,
                          color: Colors.green.shade800,
                          size: 18,
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: TextFormField(
                    controller: _fromLocationController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                      ),
                      hintText: 'From Location',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: TextFormField(
                    controller: _toLocationController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.maps_home_work_rounded),
                      hintText: 'To Location',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: TextFormField(
                    controller: _dateTimeController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.watch_later_outlined),
                      hintText: 'Select Date and Time',
                      border: InputBorder.none,
                    ),
                    onTap: _selectDate,
                  ),
                ),
              ),
            ),
            Image.asset(Assets.map),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    final DateTime picked = (await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        )) ??
        DateTime.now();

    if (picked != null && picked != selectedDate) {
      // final TimeOfDay? pickedTime = await showTimePicker(
      //   context: context,
      //   initialTime: TimeOfDay.now(),
      // );

      // if (pickedTime != null) {
      final DateTime selectedDateTime = DateTime(
        picked.year,
        picked.month,
        picked.day,
        // pickedTime.hour,
        // pickedTime.minute,
      );

      setState(() {
        selectedDate = selectedDateTime;
        _dateTimeController.text =
            "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}";
        //  ${selectedDate!.hour}:${selectedDate!.minute}";
      });
      // }
    }
  }
}
