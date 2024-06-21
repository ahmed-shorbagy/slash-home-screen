import 'package:slash_responsive_home_screen/Features/home/Data/models/new_arrival.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/Repositories/home_repository.dart';

class GetNewArrivals {
  final HomeRepository repository;

  GetNewArrivals({required this.repository});

  Future<List<NewArrival>> call() async {
    return await repository.getNewArrivals();
  }
}
