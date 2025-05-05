import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volt/manager/Add_student_cubit/add_student_cubit.dart';
import 'package:volt/manager/get_student_cubit/get_student_cubit.dart';
import 'package:volt/model/student_model.dart';
import 'package:volt/screens/widgets/Custom_Buttom.dart';
import 'package:volt/screens/widgets/Custom_Textfield.dart';

class AddStudentViewBody extends StatefulWidget {
  const AddStudentViewBody({super.key});

  @override
  State<AddStudentViewBody> createState() => _AddStudentViewBodyState();
}

class _AddStudentViewBodyState extends State<AddStudentViewBody> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            CustomTextField(
              controller: _nameController,
              hint: "Student Name",
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              controller: _phoneController,
              hint: "Family Phone",
            ),
            SizedBox(
              height: 24,
            ),
            Custombuttom(
              text: "Add Student",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  final String name = _nameController.text;
                  final String phone = _phoneController.text;

                  BlocProvider.of<AddStudentCubit>(context).addStudent(
                    name: name,
                    phone: phone,
                    // description: "description",
                    context: context,
                    // message: "",
                  );
                  _nameController.clear();
                  _phoneController.clear();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
