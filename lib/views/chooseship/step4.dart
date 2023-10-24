import 'package:flutter/material.dart';
import '../../utils/colors/materialcolors.dart';
import 'step5.dart';

class Step4 extends StatefulWidget {
  const Step4({Key? key}) : super(key: key);

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  int selectedtruckindex = 2;

  final TextEditingController _equipmentTypeController =
      TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  String _selectedWeightUnit = 'lbs';

  List<String> _weightUnits = ['lbs', 'kg', 'g', 'ton'];
  int _currentQuantity = 1;

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
        title: const Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              'Equipments Details',
              style: TextStyle(color: Colors.white),
            ),
          ],
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
                      builder: (context) => const Step5(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                color: MaterialColors.primaryColor,
              ),
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
            _buildTextField('Sport Equipment Type', _equipmentTypeController,
                Icons.local_shipping),
            _buildTextField(
                'Width (Feet)', _widthController, Icons.square_foot),
            _buildTextField('Height (Feet)', _heightController, Icons.height),
            _buildWeightField(),
            _buildQuantityTile(),
            CheckboxListTile(
              title: Text(
                'Stackable',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              value: true,
              onChanged: (v) {},
              subtitle: Text(
                'Items That can be stacked to reduce linear space.',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.grey),
              ),
            ),
            CheckboxListTile(
              title: Text(
                'Hazardous',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              value: false,
              onChanged: (v) {},
              subtitle: Text(
                'Hazmat such as chemicals, acid waste with a UN number.',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      String labelText, TextEditingController controller, IconData icon) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(icon),
                  hintText: labelText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWeightField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 8.0),
          child: Row(
            children: [
              const Icon(Icons.fitness_center),
              const SizedBox(width: 8),
              Expanded(
                child: TextFormField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    hintText: 'Weight',
                    border: InputBorder.none,
                  ),
                ),
              ),
              DropdownButton<String>(
                value: _selectedWeightUnit,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedWeightUnit = newValue!;
                  });
                },
                items:
                    _weightUnits.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuantityTile() {
    return ListTile(
      leading: const Icon(Icons.archive),
      title: const Text('Quantity'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              if (_currentQuantity > 1) {
                setState(() {
                  _currentQuantity--;
                  _quantityController.text = _currentQuantity.toString();
                });
              }
            },
            icon: const Icon(Icons.remove),
            color: MaterialColors.primaryColor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1 / 1,
            child: TextFormField(
              controller: _quantityController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '0',
                border: InputBorder.none,
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  _currentQuantity = int.parse(value);
                } else {
                  _currentQuantity = 0;
                }
              },
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _currentQuantity++;
                _quantityController.text = _currentQuantity.toString();
              });
            },
            icon: const Icon(Icons.add),
            color: MaterialColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
