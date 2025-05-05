import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:volt/model/student_model.dart';

part 'get_student_state.dart';

class GetStudentCubit extends Cubit<GetStudentState> {
  GetStudentCubit() : super(GetStudentInitial());

  QuerySnapshot<Map<String, dynamic>>? snapshot;

  Future<void> fetchStudents() async {
    emit(GetStudentLoading());

    try {
      snapshot = await FirebaseFirestore.instance
          .collection('students')
          .orderBy('createdAt', descending: true)
          .get();

      emit(GetStudentSuccess());
    } catch (error) {
      emit(GetStudentFailure(errorMessage: error.toString()));
    }
  }
}
