import 'package:flutter/material.dart';
import 'package:projectk/treatment_page.dart';

class AddMed2 extends StatefulWidget {
  const AddMed2({super.key});

  @override
  State<AddMed2> createState() => _AddMed2State();
}

class _AddMed2State extends State<AddMed2> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine add Page'),
      ),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            'assets/images/medicine.png',
            height: 250,
            width: 250,
          )),
          Text(
            "How often do you take this\n medication?",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Divider(
              color: Colors.blue,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Once daily",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Twice daily",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Multiple time daily",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value3) {
                          setState(() {
                            _isChecked = value3 ?? false;
                          });
                        })
                  ],
                ),

              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, right: 20, left: 20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TreatmentPage()),
                  );
                },
                child: Text("Next"),
              ),
            ),
          )
        ],
      ),
    );
  }
}