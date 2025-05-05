import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'Add_student_state.dart';

class AddStudentCubit extends Cubit<AddStudentState> {
  AddStudentCubit() : super(AddStudentInitial());

  Future<void> addStudent({
    required String name,
    required String phone,
    //  required String description,
    required BuildContext context,
    //required String message,
  }) async {
    if (name.isEmpty || phone.isEmpty) return; //|| description.isEmpty

    emit(AddStudentLoading());

    try {
      // Add document to Firestore
      DocumentReference newUserRef =
          await FirebaseFirestore.instance.collection('students').add({
        'name': name,
        'phone': phone,
        //   'description': description,
        'createdAt': FieldValue.serverTimestamp(),
        'attend': false,
      });

      // Show success message

      emit(AddStudentSuccess());
    } catch (error) {
      // Handle exceptions
      emit(AddStudentFailure(errorMessage: error.toString()));
    }
  }
}
