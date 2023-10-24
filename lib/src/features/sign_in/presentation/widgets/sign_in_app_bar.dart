import 'package:flutter/material.dart';

import 'package:olearis_flutter_test/src/features/sign_in/constants/sign_in_strings.dart';

class SignInAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SignInAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(SignInStrings.signIn),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
