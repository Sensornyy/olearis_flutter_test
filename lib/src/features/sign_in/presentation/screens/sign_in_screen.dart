import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:olearis_flutter_test/src/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/widgets/sign_in_app_bar.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/widgets/sign_in_button.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/widgets/sign_in_text_fields.dart';
import 'package:olearis_flutter_test/src/shared/constants/ui_constants.dart';
import 'package:olearis_flutter_test/src/shared/widgets/app_logo.dart';
import 'package:olearis_flutter_test/src/shared/widgets/custom_scrollbar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController loginController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    loginController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: const SignInAppBar(),
          body: CustomScrollbar(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  fillOverscroll: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: UIConstants.largePadding,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const AppLogo(
                          height: UIConstants.logoHeight,
                          width: double.infinity,
                        ),
                        SignInTextFields(
                          loginController: loginController,
                          passwordController: passwordController,
                        ),
                        const SignInButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();

    super.dispose();
  }
}
