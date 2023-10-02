class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}

final class LoginLoadingState extends AuthState {}

final class LoginSuccessState extends AuthState {}

final class LoginFailureState extends AuthState {
  final String errMessage;

  LoginFailureState({required this.errMessage});
}

final class ResetLoadingState extends AuthState {}

final class ResetSuccessState extends AuthState {}

final class ResetFailureState extends AuthState {
  final String errMessage;

  ResetFailureState({required this.errMessage});
}

final class TermsAndComnditionUpateState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}
