import 'package:flutter/material.dart';
import 'package:volt/screens/second_secondary_view.dart';
import 'package:volt/screens/widgets/LogoCard.dart';
import 'package:volt/screens/widgets/card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              CustomCard(
                text: "طلاب السنه الثالثه",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondSecondaryView(),
                    ),
                  );
                },
                colors: [
                  Color(0xFFfb7373), // Light color
                  Color(0xFFfc9b81), // Darker color
                ],
                image: 'assets/School_icon.svg',
              ),
              // SizedBox(
              //   height: 26,
              // ),
              // CustomCard(
              //   text: 'الصف الثالث الثانوي',
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => SecondaryThirdView(),
              //       ),
              //     );
              //   },
              //   colors: [
              //     Color(0xFFd766d6),
              //     Color(0xFFf5a194),
              //   ],
              //   image: 'assets/calender_icon.svg',
              // ),
              // SizedBox(
              //   height: 35,
              // )
            ],
          ),
        ),
        Logocard(),
      ],
    );
  }
}
