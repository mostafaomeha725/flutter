import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volt/manager/Add_student_cubit/add_student_cubit.dart';
import 'package:volt/screens/widgets/Add_student_view_body.dart';

class AddStudentView extends StatelessWidget {
  const AddStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddStudentCubit, AddStudentState>(
      listener: (context, state) {
        if (state is AddStudentSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Successfully Added"),
            ),
          );
        } else if (state is AddStudentFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
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
          body: AddStudentViewBody(),
        );
      },
    );
  }
}
