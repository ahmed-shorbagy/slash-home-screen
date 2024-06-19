part of 'get_best_sellers_cubit.dart';

sealed class GetBestSellersState extends Equatable {
  const GetBestSellersState();

  @override
  List<Object> get props => [];
}

final class GetBestSellersInitial extends GetBestSellersState {}
