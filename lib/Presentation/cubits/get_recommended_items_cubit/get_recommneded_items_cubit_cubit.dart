import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slash_responsive_home_screen/Data/models/recommended_item.dart';
import 'package:slash_responsive_home_screen/Domain/UseCases/get_recommended.dart';

part 'get_recommneded_items_cubit_state.dart';

class GetRecommnededItemsCubit extends Cubit<GetRecommnededItemsState> {
  final GetRecommended getRecommended;
  GetRecommnededItemsCubit({required this.getRecommended})
      : super(GetRecommnededItemsInitial());
  Future<void> getRecommendedItems() async {
    emit(GetRecommnededItemsLoading());
    try {
      final recommendedItems = await getRecommended();
      emit(GetRecommnededItemsSuccess(recommendedItems: recommendedItems));
    } catch (e) {
      log(e.toString());
      emit(GetRecommnededItemsFailure(errMessage: e.toString()));
    }
  }
}
