part of 'get_new_arrivals_cubit.dart';

sealed class GetNewArrivalsState extends Equatable {
  const GetNewArrivalsState();

  @override
  List<Object> get props => [];
}

final class GetNewArrivalsInitial extends GetNewArrivalsState {}
