import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olearis_flutter_test/src/features/home/bloc/home_cubit.dart';

import 'package:olearis_flutter_test/src/features/home/widgets/home_app_bar.dart';
import 'package:olearis_flutter_test/src/features/home/widgets/item_container.dart';
import 'package:olearis_flutter_test/src/shared/widgets/app_logo.dart';
import 'package:olearis_flutter_test/src/shared/widgets/custom_scroll_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: CustomScrollBar(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // const SliverToBoxAdapter(
              //   child: AppLogo(
              //     isOutlined: true,
              //     height: 100,
              //     margin: EdgeInsets.symmetric(
              //       horizontal: 30,
              //       vertical: 30,
              //     ),
              //     padding: EdgeInsets.symmetric(horizontal: 15),
              //   ),
              // ),
              // BlocBuilder<HomeCubit, HomeState>(
              //   builder: (context, state) {
              //     return SliverGrid(
              //       delegate: SliverChildBuilderDelegate(
              //         (BuildContext context, int index) {
              //           return ItemContainer(
              //             text: 'Item $index',
              //           );
              //         },
              //         childCount: state.items.length,
              //       ),
              //       gridDelegate:
              //           const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //         crossAxisSpacing: 8.0,
              //         mainAxisSpacing: 8.0,
              //         childAspectRatio: 4,
              //       ),
              //     );
              //   },
              // ),

              SliverFillRemaining(
                hasScrollBody: true,
                child: Center(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AppLogo(
                          isOutlined: true,
                          height: 100,
                          margin: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 30,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                        BlocBuilder<HomeCubit, HomeState>(
                          builder: (context, state) {
                            return GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8.0,
                                mainAxisSpacing: 8.0,
                                childAspectRatio: 4,
                              ),
                              itemCount: state.items.length,
                              itemBuilder: (context, index) {
                                return ItemContainer(
                                  text: state.items[index],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // BlocBuilder<HomeCubit, HomeState>(
              //   builder: (context, state) {
              //     return SliverGrid(
              //       delegate: SliverChildBuilderDelegate(
              //             (BuildContext context, int index) {
              //           return ItemContainer(
              //             text: 'Item $index',
              //           );
              //         },
              //         childCount: state.items.length, // Replace with your actual item count
              //       ),
              //       gridDelegate:
              //       const SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 2,
              //           crossAxisSpacing: 8.0,
              //           mainAxisSpacing: 8.0,
              //           childAspectRatio: 4),
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
