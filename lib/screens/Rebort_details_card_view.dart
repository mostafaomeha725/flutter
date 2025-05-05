import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volt/screens/Admin_dashboard_view.dart';
import 'package:volt/screens/widgets/DashbordDetailesAdminCardView.dart';

class RebortDetailsCardView extends StatelessWidget {
  const RebortDetailsCardView({super.key});

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
      body: AdminDashboard(),
    );
  }
}
