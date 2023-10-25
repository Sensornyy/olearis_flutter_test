import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:olearis_flutter_test/src/features/home/constants/home_strings.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/bloc/home_cubit.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          context.go('/');
        },
      ),
      title: const Text(HomeStrings.markupTest),
      actions: [
        IconButton(
          onPressed: () {
            BlocProvider.of<HomeCubit>(context).removeLastItem();
          },
          icon: const Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () {
            BlocProvider.of<HomeCubit>(context).addItem();
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
