import 'package:flutter/material.dart';

class ForTest extends StatefulWidget {
  const ForTest({super.key});

  @override
  State<ForTest> createState() => _ForTestState();
}

TextEditingController cardNumberController1 = TextEditingController();
TextEditingController cardNumberController2 = TextEditingController();
TextEditingController cardNumberController3 = TextEditingController();
TextEditingController cardNumberController4 = TextEditingController();

class _ForTestState extends State<ForTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: 70,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: cardNumberController1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.length == 4) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: cardNumberController2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.length == 4) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: cardNumberController3,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.length == 4) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: cardNumberController4,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.length == 4) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
