import 'package:get_it/get_it.dart';
import 'package:slash_responsive_home_screen/Data/dataSources/home_data_source.dart';
import 'package:slash_responsive_home_screen/Data/repositories/home_repository_impl.dart';
import 'package:slash_responsive_home_screen/Domain/UseCases/get_best_sellers.dart';
import 'package:slash_responsive_home_screen/Domain/UseCases/get_new_arrivals.dart';
import 'package:slash_responsive_home_screen/Domain/UseCases/get_recommended.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<GetBestSellers>(
    GetBestSellers(
        repository: HomeRepositoryImpl(dataSource: HomeDataSource())),
  );
  getIt.registerSingleton<GetNewArrivals>(
    GetNewArrivals(
        repository: HomeRepositoryImpl(dataSource: HomeDataSource())),
  );
  getIt.registerSingleton<GetRecommended>(
    GetRecommended(
        repository: HomeRepositoryImpl(dataSource: HomeDataSource())),
  );
}
