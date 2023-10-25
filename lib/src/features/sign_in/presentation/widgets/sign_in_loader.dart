import 'package:flutter/material.dart';

import 'package:olearis_flutter_test/src/features/sign_in/constants/sign_in_ui_constants.dart';

class SignInLoader extends StatelessWidget {
  const SignInLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: SignInUIConstants.signInLoaderSize,
        width: SignInUIConstants.signInLoaderSize,
        child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: SignInUIConstants.signInLoaderStrokeWidth,
        ),
      ),
    );
  }
}
