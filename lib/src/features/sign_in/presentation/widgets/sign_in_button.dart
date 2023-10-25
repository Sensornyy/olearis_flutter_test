import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:olearis_flutter_test/src/features/sign_in/constants/sign_in_strings.dart';
import 'package:olearis_flutter_test/src/features/sign_in/constants/sign_in_ui_constants.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/widgets/sign_in_loader.dart';
import 'package:olearis_flutter_test/src/shared/constants/ui_constants.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.whenOrNull(
          signedIn: () {
            context.go('/home');
          },
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: UIConstants.smallPadding),
          child: SizedBox(
            height: SignInUIConstants.signInButtonHeight,
            width: SignInUIConstants.signInButtonWidth,
            child: ElevatedButton(
              onPressed: state.whenOrNull(
                enabled: () {
                  return () => BlocProvider.of<SignInBloc>(context).add(
                        const SignInEvent.signIn(),
                      );
                },
                signedIn: () {
                  return () => BlocProvider.of<SignInBloc>(context).add(
                        const SignInEvent.signIn(),
                      );
                },
                disabled: () => null,
                loading: () => () {},
              ),
              child: state.maybeWhen(
                orElse: () => const Text(SignInStrings.continueString),
                loading: () => const SignInLoader(),
              ),
            ),
          ),
        );
      },
    );
  }
}
