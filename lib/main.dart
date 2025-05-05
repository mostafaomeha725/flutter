import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volt/firebase_options.dart';
import 'package:volt/helper/BlocObserve/Simple_Bloc_Observe.dart';
import 'package:volt/manager/Add_student_cubit/add_student_cubit.dart';

import 'package:volt/screens/Home_view.dart';
import 'package:volt/screens/login_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserve();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiBlocProvider(providers: [
    // BlocProvider(create: (context) => GetStudentCubit()),
    BlocProvider(create: (context) => AddStudentCubit()),
  ], child: const VoltApp()));
}

class VoltApp extends StatelessWidget {
  const VoltApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
