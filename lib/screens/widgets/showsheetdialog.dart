import 'package:flutter/material.dart';
import 'package:volt/screens/widgets/Custom_Buttom.dart';

class ShowSuccessSheet {
  static void showSuccessDialog(BuildContext context, String message,
      {required VoidCallback onPressed}) {
    showDialog(
      context: context,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade100,
                    ),
                    child: Image.asset("assets/successful.png"),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Success',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(message,
                      textAlign: TextAlign.center, style: TextStyle()),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Custombuttom(
                      text: 'HomeView',
                      onTap: onPressed,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
