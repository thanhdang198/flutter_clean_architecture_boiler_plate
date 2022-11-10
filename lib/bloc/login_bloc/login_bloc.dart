import 'login_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState) {
    on<OnLoginToServer>(_onLoginToServer);
  }

  _onLoginToServer(OnLoginToServer event, Emitter<LoginState> state) async {}
}
