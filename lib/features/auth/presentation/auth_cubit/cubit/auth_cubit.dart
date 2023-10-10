import 'package:cloud_firestore/cloud_firestore.dart';
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

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      await addUserProfile();
      await verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHandleException(e);
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  void _signUpHandleException(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(
          SignUpFailureState(errMessage: 'The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(SignUpFailureState(
          errMessage: 'The account already exists for that email.'));
    } else if (e.code == 'invalid-email') {
      emit(SignUpFailureState(errMessage: 'The email is invalid.'));
    } else {
      emit(SignUpFailureState(errMessage: e.code));
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> loginWithEmailAndPassword() async {
    try {
      emit(LoginLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      _loginHandleException(e);
    } catch (e) {
      emit(LoginFailureState(errMessage: e.toString()));
    }
  }

  void _loginHandleException(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      emit(LoginFailureState(errMessage: 'No user found for that email.'));
    } else if (e.code == 'wrong-password') {
      emit(LoginFailureState(
          errMessage: 'Wrong password provided for that user.'));
    } else {
      emit(LoginFailureState(errMessage: 'Check your Email and password!'));
    }
  }

  Future<void> sendPasswordResetEmail() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      emit(ResetPasswordSuccessState());
    } catch (e) {
      emit(ResetPasswordFailureState(errMessage: e.toString()));
    }
  }

  void updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndComnditionUpateState());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    await users.add({
      "name": name,
      "email": email,
      "mobilePhone": mobilePhone,
    });
  }
}
