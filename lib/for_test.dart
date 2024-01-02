import 'dart:js';

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
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  showDialogWithPage(context);
                },
                child: Icon(Icons.add,color: Colors.white,),
              ),
        ),
        body: Container()
      ),
    );
  }
}

void showDialogWithPage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('اضافه کردن کارت'),
        content: Builder(
          builder: (BuildContext context) {
            return Container(
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
                            controller: cardNumberController1,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(2, 1, 2, 1),
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
                            width: double.infinity,
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: cardNumberController2,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(2, 1, 2, 1),
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
                            width: double.infinity,
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: cardNumberController3,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(2, 1, 2, 1),
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
                            width: double.infinity,
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: cardNumberController4,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(2, 1, 2, 1),
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
                  Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            controller: cardNumberController2,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(2, 1, 2, 1),
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
            );
          },
        ),
      );
    },
  );
}
