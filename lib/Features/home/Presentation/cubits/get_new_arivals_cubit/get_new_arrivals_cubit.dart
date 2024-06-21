import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/new_arrival.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/UseCases/get_new_arrivals.dart';

part 'get_new_arrivals_state.dart';

class GetNewArrivalsCubit extends Cubit<GetNewArrivalsState> {
  final GetNewArrivals getNewArrivals;
  GetNewArrivalsCubit({required this.getNewArrivals})
      : super(GetNewArrivalsInitial());
  Future<void> getNewArrivalsData() async {
    emit(GetNewArrivalsLoading());
    try {
      final newArrivals = await getNewArrivals();
      emit(GetNewArrivalsSuccess(newArrivals: newArrivals));
    } catch (e) {
      log(e.toString());
      emit(GetNewArrivalsFailure(errMessage: e.toString()));
    }
  }
}
