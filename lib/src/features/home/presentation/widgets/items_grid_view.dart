import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:olearis_flutter_test/src/features/home/constants/home_ui_constants.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/bloc/home_cubit.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/widgets/item_container.dart';

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: HomeUIConstants.gridViewCrossAxisCount,
            crossAxisSpacing: HomeUIConstants.gridViewCrossAxisSpacing,
            mainAxisSpacing: HomeUIConstants.gridViewMainAxisSpacing,
            childAspectRatio: HomeUIConstants.gridViewChildAspectRatio,
          ),
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            return ItemContainer(
              text: state.items[index],
            );
          },
        );
      },
    );
  }
}
