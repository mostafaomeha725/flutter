import 'package:flutter/material.dart';

class CustomButtomCategory extends StatelessWidget {
  const CustomButtomCategory({super.key, required this.text, this.onTap});
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                Color(0xFFfb7373), // Light color
                Color(0xFFfc9b81),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
