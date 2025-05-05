import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volt/screens/widgets/AdminCardDetails.dart';

class DashbordDetailesAdminCardView extends StatelessWidget {
  const DashbordDetailesAdminCardView({
    super.key,
    required this.name,
    required this.phone,
    //   required this.description,
    required this.createdAt,
    // required this.message,
  });

  final String name;
  final String phone;
  //final String description;
  final String createdAt;
  //final String message;

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
        body: Column(
          children: [
            AdminCardDetails(text1: "name", text2: name),
            AdminCardDetails(text1: "phone", text2: phone),
            //  AdminCardDetails(text1: "description", text2: description),
            AdminCardDetails(text1: "createdAt", text2: createdAt),
            //AdminCardDetails(text1: "message", text2: message),
          ],
        ));
  }
}
