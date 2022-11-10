import 'package:flutter/material.dart';

@immutable
class LoginState {
  const LoginState();
  factory LoginState.initial() {
    return const LoginState();
  }
}

class LoginError extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginAsGuest extends LoginState {}

class LoginLoading extends LoginState {}
