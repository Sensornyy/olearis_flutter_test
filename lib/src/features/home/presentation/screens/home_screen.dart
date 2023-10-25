import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:olearis_flutter_test/src/features/home/constants/home_ui_constants.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/bloc/home_cubit.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/widgets/home_app_bar.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/widgets/items_grid_view.dart';
import 'package:olearis_flutter_test/src/shared/constants/ui_constants.dart';
import 'package:olearis_flutter_test/src/shared/widgets/app_logo.dart';
import 'package:olearis_flutter_test/src/shared/widgets/custom_scrollbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const Scaffold(
        appBar: HomeAppBar(),
        body: CustomScrollbar(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: true,
                child: Center(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppLogo(
                          isOutlined: true,
                          height: UIConstants.logoHeight,
                          margin: EdgeInsets.all(HomeUIConstants.logoPadding),
                          padding: EdgeInsets.symmetric(
                            horizontal: UIConstants.largePadding,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: UIConstants.mediumPadding,
                          ),
                          child: ItemsGridView(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
