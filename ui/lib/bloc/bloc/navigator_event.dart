part of 'navigator_bloc.dart';

@immutable
abstract class NavigatorEvent {}

enum AppEvent {
  AllTask,
  CreateTask,
  CreateBenefactor,
  CreateCharity,
  LogIn,
  SignUp,
  LogOut
}
