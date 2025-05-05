import 'package:flutter/material.dart';
import 'package:volt/screens/widgets/Custom_Buttom_Category.dart';

class SecondaryThirdBody extends StatelessWidget {
  const SecondaryThirdBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomButtomCategory(text: "Add Student"),
        SizedBox(
          height: 22,
        ),
        CustomButtomCategory(text: "Update Student"),
        SizedBox(
          height: 22,
        ),
        CustomButtomCategory(text: "Delete Student"),
        SizedBox(
          height: 22,
        ),
        CustomButtomCategory(text: "Payment History"),
        SizedBox(
          height: 22,
        ),
        CustomButtomCategory(text: "QR Code Scanner"),
        SizedBox(
          height: 22,
        ),
        CustomButtomCategory(text: "Reports Details"),
      ],
    );
  }
}
