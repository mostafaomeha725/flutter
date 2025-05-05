part of 'add_student_cubit.dart';

sealed class AddStudentState {}

final class AddStudentInitial extends AddStudentState {}

final class AddStudentLoading extends AddStudentState {}

final class AddStudentSuccess extends AddStudentState {}

final class AddStudentFailure extends AddStudentState {
  final String errorMessage;
  AddStudentFailure({required this.errorMessage});
}
