import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slash_responsive_home_screen/Data/models/recommended_item.dart';
import 'package:slash_responsive_home_screen/Domain/UseCases/get_recommended.dart';

part 'get_recommneded_items_cubit_state.dart';

class GetRecommnededItemsCubitCubit
    extends Cubit<GetRecommnededItemsCubitState> {
  final GetRecommended getRecommended;
  GetRecommnededItemsCubitCubit({required this.getRecommended})
      : super(GetRecommnededItemsCubitInitial());
  Future<void> getRecommendedItems() async {
    emit(GetRecommnededItemsCubitLoading());
    try {
      final recommendedItems = await getRecommended();
      emit(GetRecommnededItemsCubitSuccess(recommendedItems: recommendedItems));
    } catch (e) {
      emit(GetRecommnededItemsCubitFailure(errMessage: e.toString()));
    }
  }
}
