import 'package:slash_responsive_home_screen/Data/models/best_seller.dart';
import 'package:slash_responsive_home_screen/Domain/Repositories/home_repository.dart';

class GetBestSellers {
  final HomeRepository repository;

  GetBestSellers({required this.repository});

  Future<List<BestSeller>> call() async {
    return await repository.getBestSellers();
  }
}
