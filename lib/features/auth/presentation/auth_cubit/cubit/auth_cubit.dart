import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  String? mobilePhone;
  bool? termsAndConditionCheckBoxValue;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signupForm = GlobalKey();
  GlobalKey<FormState> loginForm = GlobalKey();
  GlobalKey<FormState> resetPasswordForm = GlobalKey();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      print(e.toString());
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  loginWithEmailAndPassword() async {
    try {
      emit(LoginLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailureState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailureState(
            errMessage: 'Wrong password provided for that user.'));
      }
    } catch (e) {
      print(e.toString());
      emit(LoginFailureState(errMessage: e.toString()));
    }
  }

  sendPasswordResetEmail() async {
    try {
      emit(ResetLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      emit(ResetSuccessState());
    } catch (e) {
      print(e.toString());
      emit(ResetFailureState(errMessage: e.toString()));
    }
  }

  updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndComnditionUpateState());
  }

  obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }
}
