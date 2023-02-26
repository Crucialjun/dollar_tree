import 'package:dollar_tree/utils.dart';
import 'package:flutter/material.dart';

class AddLoanScreen extends StatelessWidget {
  static const String routeName = "add_loan_screen";
  const AddLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text("Add Loan"),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: InkWell(
              onTap: () {
                showPhotoPickDialog(context);
              },
              child: Container(
                width: size.width,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: const [
                    Icon(Icons.add_a_photo),
                    Text("Add Photos"),
                  ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
