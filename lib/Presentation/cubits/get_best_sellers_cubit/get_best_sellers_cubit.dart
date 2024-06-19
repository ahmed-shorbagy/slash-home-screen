import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_best_sellers_state.dart';

class GetBestSellersCubit extends Cubit<GetBestSellersState> {
  GetBestSellersCubit() : super(GetBestSellersInitial());
}
