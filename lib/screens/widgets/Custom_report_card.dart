import 'package:flutter/material.dart';

class CustomReportCard extends StatelessWidget {
  const CustomReportCard({super.key, required this.text, this.onTap});
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
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
