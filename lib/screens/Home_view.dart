import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volt/screens/widgets/Home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset('assets/back Icons.svg')),
          )
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
