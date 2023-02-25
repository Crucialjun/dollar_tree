import 'package:dollar_tree/features/add_loan_entry/screens/add_loan_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "dashboard_screen";
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AddLoanScreen.routeName);
        },
        child: const Text("Add new Loan"),
      ),
      body: Column(children: const []),
    );
  }
}
