
import 'package:flutter/material.dart';

import 'data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvv2Controller = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();

  List<DataCard> dataCards = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Card',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text('Eneter the card data:'),
              TextField(
                controller: cardNumberController,
                decoration: InputDecoration(
                  hintText: 'Card Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'First Name And Last Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  hintText: 'Date',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: cvv2Controller,
                decoration: InputDecoration(
                  hintText: 'CVV2',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: accountNumberController,
                decoration: InputDecoration(
                  hintText: 'Account Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple),
                    ),
                    onPressed: () {
                      String cardNumber = cardNumberController.text.trim();
                      String name = nameController.text.trim();
                      String date = dateController.text.trim();
                      String cvv2 = cvv2Controller.text.trim();
                      String accountNumber =
                      accountNumberController.text.trim();
                      if (cardNumber.isNotEmpty &&
                          name.isNotEmpty &&
                          date.isNotEmpty &&
                          cvv2.isNotEmpty &&
                          accountNumber.isNotEmpty) {
                        setState(
                              () {
                            cardNumberController.text = '';
                            nameController.text = '';
                            dateController.text = '';
                            cvv2Controller.text = '';
                            accountNumberController.text = '';
                            dataCards.add(
                              DataCard(
                                  cardNumber: cardNumber,
                                  name: name,
                                  date: date,
                                  cvv2: cvv2,
                                  accountNumber: accountNumber),
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              dataCards.isEmpty
                  ? const Text('not card')
                  : SizedBox(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: dataCards.length,
                  itemBuilder: (context, index) => getCard(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCard(int index) {
    if (index < dataCards.length) {
      DataCard dataCard = dataCards[index];

      return Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Image.asset('assets/meli.jpg'),
              Positioned(
                bottom: 70,
                left: 70,
                right: 70,
                child: Text(
                  formatCardNumber(dataCard.cardNumber),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Positioned(
                bottom: 50,
                right: 50,
                child: Text(dataCard.name),
              ),
              Positioned(
                bottom: 50,
                left: 50,
                child: Text(dataCard.date),
              ),
              Positioned(
                bottom: 30,
                right: 50,
                child: Text(dataCard.cvv2),
              ),
              Positioned(
                bottom: 30,
                left: 50,
                child: Text(dataCard.accountNumber),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Text('invalid');
    }
  }
}

String formatCardNumber(String cardNumber){
  cardNumber = cardNumber.replaceAll(' ', '');

  List<String> chunks = [];
  for (int i = 0; i < cardNumber.length; i+=4) {
    chunks.add(cardNumber.substring(i,i+4));
  }
  return chunks.join(' ');
}
