import 'package:slash_responsive_home_screen/Data/models/new_arrival.dart';
import 'package:slash_responsive_home_screen/Domain/Repositories/home_repository.dart';

class GetNewArrivals {
  final HomeRepository repository;

  GetNewArrivals(this.repository);

  Future<List<NewArrival>> call() async {
    return await repository.getNewArrivals();
  }
}