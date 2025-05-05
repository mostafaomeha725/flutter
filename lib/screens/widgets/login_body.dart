import 'package:flutter/material.dart';
import 'package:volt/screens/Home_view.dart';
import 'package:volt/screens/widgets/Custom_Buttom.dart';
import 'package:volt/screens/widgets/Custom_Textfield.dart';
import 'package:volt/screens/widgets/showsheetdialog.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Controllers to manage input from text fields
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Center(
                      child: Image.asset(
                        'assets/university.jpg',
                        // color: Colors.orange,
                        width: 200,
                      ),
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  CustomTextField(
                    hint: "Email",
                    controller: emailController, // Pass controller
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    hint: "Password",
                    active: true,
                    controller: passwordController, // Pass controller
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Custombuttom(
                    text: "Login",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        if (emailController.text == 'hazem123@gmail.com' &&
                            passwordController.text == '123456') {
                          ShowSuccessSheet.showSuccessDialog(
                            context,
                            "Successful Login",
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeView()),
                            ),
                          );
                          //  showsnakebar(context, text: 'Successful Login');
                        } else {
                          showsnakebar(context,
                              text: 'Invalid Email or Password');
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showsnakebar(BuildContext context,
      {required String text, Color? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text), backgroundColor: backgroundColor),
    );
  }
}
