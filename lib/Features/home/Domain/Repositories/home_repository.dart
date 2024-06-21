import 'package:slash_responsive_home_screen/Features/home/Data/models/best_seller.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/new_arrival.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/recommended_item.dart';

abstract class HomeRepository {
  Future<List<BestSeller>> getBestSellers();
  Future<List<NewArrival>> getNewArrivals();
  Future<List<RecommendedItem>> getRecommended();
}
