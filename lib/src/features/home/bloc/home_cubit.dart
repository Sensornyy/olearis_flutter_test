import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:olearis_flutter_test/src/features/home/constants/home_strings.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial(<String>[]));

  void addItem() {
    final List<String> updatedItems = List.from(state.items)
      ..add('${HomeStrings.item} ${state.items.length}');

    emit(HomeState.initial(updatedItems));
  }

  void removeLastItem() {
    if (state.items.isNotEmpty) {
      final List<String> updatedItems = List.from(state.items)..removeLast();

      emit(HomeState.initial(updatedItems));
    }
  }
}
