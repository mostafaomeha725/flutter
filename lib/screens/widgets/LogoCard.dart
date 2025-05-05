import 'package:flutter/material.dart';

class Logocard extends StatelessWidget {
  const Logocard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22), topRight: Radius.circular(22)),
        gradient: LinearGradient(
          colors: [
            Color(0xFFfb7373), // Light color
            Color(0xFFf5a194),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Dr.Elham Hamza",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          // Image.asset(
          //   "assets/volt.png",
          //   width: 80,
          // ),
        ],
      ),
    );
  }
}
