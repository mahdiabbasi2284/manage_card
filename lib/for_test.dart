import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';


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
    return SafeArea(
      child: Scaffold(
          floatingActionButton: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                showDialogWithPage(context);
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          body: Container()),
    );
  }
}

void showDialogWithPage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('اضافه کردن کارت'),
        content: Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.digitsOnly,
                            //   _CardNumberFormatter()
                            // ],
                            controller: cardNumberController1,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                              labelText: '',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}

// class _CardNumberFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     String text = newValue.text.replaceAll(RegExp(r'\D'), '');
//     int spaceCount = (text.length / 4).floor();
//     int offset = 0;

//     for (int i = 0; i < spaceCount; i++) {
//       if ((i * 4 + offset) < text.length) {
//         text = text.replaceRange(i * 4 + offset, i * 4 + offset, '-');
//         offset++;
//       }
//     }

//     return newValue.copyWith(
//       text: text,
//       selection: TextSelection.collapsed(
//         offset: text.length,
//       ),
//     );
//   }
// }