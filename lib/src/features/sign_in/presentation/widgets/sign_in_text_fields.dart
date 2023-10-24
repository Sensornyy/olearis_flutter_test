import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:olearis_flutter_test/src/features/sign_in/constants/sign_in_strings.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/bloc/sign_in_bloc.dart';

class SignInTextFields extends StatelessWidget {
  final TextEditingController loginController;
  final TextEditingController passwordController;

  const SignInTextFields({
    required this.loginController,
    required this.passwordController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: loginController,
          onChanged: (login) {
            BlocProvider.of<SignInBloc>(context).add(
              SignInEvent.updateTextFields(
                login: login,
                password: passwordController.text,
              ),
            );
          },
          decoration: const InputDecoration(hintText: SignInStrings.login),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: passwordController,
          onChanged: (password) {
            BlocProvider.of<SignInBloc>(context).add(
              SignInEvent.updateTextFields(
                login: loginController.text,
                password: password,
              ),
            );
          },
          decoration: const InputDecoration(hintText: SignInStrings.password),
        ),
      ],
    );
  }
}
