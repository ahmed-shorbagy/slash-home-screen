part of 'get_recommneded_items_cubit_cubit.dart';

sealed class GetRecommnededItemsCubitState extends Equatable {
  const GetRecommnededItemsCubitState();

  @override
  List<Object> get props => [];
}

final class GetRecommnededItemsCubitInitial
    extends GetRecommnededItemsCubitState {}

final class GetRecommnededItemsCubitSuccess
    extends GetRecommnededItemsCubitState {
  final List<RecommendedItem> recommendedItems;

  const GetRecommnededItemsCubitSuccess({required this.recommendedItems});
}

final class GetRecommnededItemsCubitLoading
    extends GetRecommnededItemsCubitState {}

final class GetRecommnededItemsCubitFailure
    extends GetRecommnededItemsCubitState {
  final String errMessage;

  const GetRecommnededItemsCubitFailure({required this.errMessage});
}
