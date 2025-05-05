import 'package:flutter/material.dart';

class CustomRebortCardDetailes extends StatelessWidget {
  const CustomRebortCardDetailes(
      {super.key, required this.text1, this.onTap, required this.text2});
  final String text1;
  final String text2;

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(height: 12),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text(
                    text1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    text2,
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Divider(),
          ],
        ),
      ),
    );
  }
}
