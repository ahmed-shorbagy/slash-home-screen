import 'package:slash_responsive_home_screen/Features/home/Data/dataSources/home_data_source.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/best_seller.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/new_arrival.dart';
import 'package:slash_responsive_home_screen/Features/home/Data/models/recommended_item.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/Repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource dataSource;

  HomeRepositoryImpl({required this.dataSource});

  @override
  Future<List<BestSeller>> getBestSellers() async {
    final data = await dataSource.fetchHomeData();
    final bestSellerData = (data['bestSelling'] as List)
        .map((item) => BestSeller.fromJson(item))
        .toList();
    return bestSellerData;
  }

  @override
  Future<List<NewArrival>> getNewArrivals() async {
    final data = await dataSource.fetchHomeData();
    final newArrivalData = (data['newArrival'] as List)
        .map((item) => NewArrival.fromJson(item))
        .toList();
    return newArrivalData;
  }

  @override
  Future<List<RecommendedItem>> getRecommended() async {
    final data = await dataSource.fetchHomeData();
    final recommendedData = (data['recommendedForYou'] as List)
        .map((item) => RecommendedItem.fromJson(item))
        .toList();
    return recommendedData;
  }
}
