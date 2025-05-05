import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volt/manager/Add_student_cubit/add_student_cubit.dart';
import 'package:volt/manager/get_student_cubit/get_student_cubit.dart';
import 'package:volt/screens/widgets/Second_Secondary_View_Body_builder.dart';
import 'package:volt/screens/widgets/second_secondary_view_body.dart';

class SecondSecondaryView extends StatelessWidget {
  const SecondSecondaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetStudentCubit(),
      child: Scaffold(
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
        body: SecondSecondaryViewBodyBuilder(),
      ),
    );
  }
}
