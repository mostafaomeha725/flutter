import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volt/manager/Add_student_cubit/add_student_cubit.dart';
import 'package:volt/manager/get_student_cubit/get_student_cubit.dart';
import 'package:volt/screens/Add_Student_view.dart';
import 'package:volt/screens/Admin_dashboard_view.dart';
import 'package:volt/screens/widgets/Custom_Buttom_Category.dart';

class SecondSecondaryViewBody extends StatelessWidget {
  const SecondSecondaryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtomCategory(
          text: "Add Student",
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddStudentView()));
          },
        ),
        // SizedBox(
        //   height: 22,
        // ),
        // CustomButtomCategory(text: "Update Student"),
        // SizedBox(
        //   height: 22,
        // ),
        // CustomButtomCategory(text: "Delete Student"),
        // SizedBox(
        //   height: 22,
        // ),
        // CustomButtomCategory(text: "Payment History"),
        // SizedBox(
        //   height: 22,
        // ),
        // CustomButtomCategory(
        //   text: "QR Code Scanner",
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => QRView()));
        //   },
        // ),
        SizedBox(
          height: 22,
        ),
        CustomButtomCategory(
          text: "Reports Details",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdminDashboard(),
              ),
            );
          },
        ),
      ],
    );
  }
}


//  List<Student> student =
//               BlocProvider.of<GetStudentCubit>(context).student ?? [];