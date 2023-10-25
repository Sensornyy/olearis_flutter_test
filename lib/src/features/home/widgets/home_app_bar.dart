import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:olearis_flutter_test/src/features/home/bloc/home_cubit.dart';
import 'package:olearis_flutter_test/src/features/home/constants/home_strings.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
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
