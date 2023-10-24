part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.loading() = _Loading;

  const factory SignInState.enabled() = _Enabled;

  const factory SignInState.disabled() = _Disabled;

  const factory SignInState.signedIn() = _SignedIn;
}
