part of 'get_student_cubit.dart';

@immutable
abstract class GetStudentState {}

class GetStudentInitial extends GetStudentState {}

class GetStudentLoading extends GetStudentState {}

class GetStudentSuccess extends GetStudentState {}

class GetStudentFailure extends GetStudentState {
  final String errorMessage;

  GetStudentFailure({required this.errorMessage});
}
