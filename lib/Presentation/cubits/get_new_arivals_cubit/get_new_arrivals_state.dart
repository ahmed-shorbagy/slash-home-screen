part of 'get_new_arrivals_cubit.dart';

sealed class GetNewArrivalsState extends Equatable {
  const GetNewArrivalsState();

  @override
  List<Object> get props => [];
}

final class GetNewArrivalsInitial extends GetNewArrivalsState {}

final class GetNewArrivalsSuccess extends GetNewArrivalsState {
  final List<NewArrival> newArrivals;

  GetNewArrivalsSuccess({required this.newArrivals});
}

final class GetNewArrivalsLoading extends GetNewArrivalsState {}

final class GetNewArrivalsFailure extends GetNewArrivalsState {
  final String errMessage;

  GetNewArrivalsFailure({required this.errMessage});
}
