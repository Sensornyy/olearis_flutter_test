import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:olearis_flutter_test/src/features/home/presentation/screens/home_screen.dart';
import 'package:olearis_flutter_test/src/features/sign_in/constants/sign_in_strings.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/bloc/sign_in_bloc.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.whenOrNull(
          signedIn: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            height: 35,
            width: 100,
            child: ElevatedButton(
              onPressed: state.whenOrNull(
                enabled: () {
                  return () => BlocProvider.of<SignInBloc>(context).add(
                        const SignInEvent.signIn(),
                      );
                },
                disabled: () => null,
                loading: () => () {},
                signedIn: () => () {},
              ),
              child: state.maybeWhen(
                orElse: () => const Text(SignInStrings.continueString),
                loading: () => const Center(
                  child: SizedBox(
                    height: 18,
                    width: 18,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
