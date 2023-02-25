import 'package:flutter/material.dart';

class AddLoanScreen extends StatelessWidget {
  static const String routeName = "add_loan_screen";
  const AddLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: const [
          Text("Add Loan"),
        ]),
      ),
    );
  }
}
