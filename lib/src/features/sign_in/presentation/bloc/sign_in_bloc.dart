import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.when(
        updateTextFields: (login, password) {
          if (login.isNotEmpty && password.isNotEmpty) {
            emit(const SignInState.enabled());
          } else {
            emit(const SignInState.disabled());
          }
        },
        signIn: () async {
          emit(const SignInState.loading());
          await Future.delayed(const Duration(seconds: 2));
          emit(const SignInState.signedIn());
        },
      );
    });
  }
}
