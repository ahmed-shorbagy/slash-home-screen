part of 'get_best_sellers_cubit.dart';

sealed class GetBestSellersState extends Equatable {
  const GetBestSellersState();

  @override
  List<Object> get props => [];
}

final class GetBestSellersInitial extends GetBestSellersState {}

final class GetBestSellersSuccess extends GetBestSellersState {
  final List<BestSeller> bestSellers;

  GetBestSellersSuccess({required this.bestSellers});
}

final class GetBestSellersLoading extends GetBestSellersState {}

final class GetBestSellersFailure extends GetBestSellersState {
  final String errMessage;

  GetBestSellersFailure({required this.errMessage});
}
