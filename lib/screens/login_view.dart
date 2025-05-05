import 'package:flutter/material.dart';
import 'package:volt/screens/widgets/login_body.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white.withOpacity(.9),
      body: LoginBody(),
    );
  }
}
