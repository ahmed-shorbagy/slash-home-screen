part of 'get_recommneded_items_cubit_cubit.dart';

sealed class GetRecommnededItemsState extends Equatable {
  const GetRecommnededItemsState();

  @override
  List<Object> get props => [];
}

final class GetRecommnededItemsInitial extends GetRecommnededItemsState {}

final class GetRecommnededItemsSuccess extends GetRecommnededItemsState {
  final List<RecommendedItem> recommendedItems;

  const GetRecommnededItemsSuccess({required this.recommendedItems});
}

final class GetRecommnededItemsLoading extends GetRecommnededItemsState {}

final class GetRecommnededItemsFailure extends GetRecommnededItemsState {
  final String errMessage;

  const GetRecommnededItemsFailure({required this.errMessage});
}
