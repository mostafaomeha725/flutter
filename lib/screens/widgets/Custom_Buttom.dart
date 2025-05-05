import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.text, this.onTap});
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.orange),
        child: Center(
            child: Text(
          text,
          // style: TextStyles.bold16.copyWith(
          //   color: Colors.white,
          // ),
        )),
      ),
    );
  }
}
