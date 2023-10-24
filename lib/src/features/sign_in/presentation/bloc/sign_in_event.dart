part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.updateTextFields({
    required String login,
    required String password,
  }) = _UpdateTextFields;

  const factory SignInEvent.signIn() = _SignIn;
}
