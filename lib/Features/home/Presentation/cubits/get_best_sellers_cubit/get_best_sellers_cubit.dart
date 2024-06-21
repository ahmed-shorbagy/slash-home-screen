import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/best_seller.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/UseCases/get_best_sellers.dart';

part 'get_best_sellers_state.dart';

class GetBestSellersCubit extends Cubit<GetBestSellersState> {
  final GetBestSellers getBestSellers;
  GetBestSellersCubit({required this.getBestSellers})
      : super(GetBestSellersInitial());
  Future<void> getBestSellersData() async {
    emit(GetBestSellersLoading());
    try {
      final bestSellers = await getBestSellers();
      emit(GetBestSellersSuccess(bestSellers: bestSellers));
    } catch (e) {
      log(e.toString());
      emit(GetBestSellersFailure(errMessage: e.toString()));
    }
  }
}
