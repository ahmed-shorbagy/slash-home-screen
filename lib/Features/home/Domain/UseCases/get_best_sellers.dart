import 'package:slash_responsive_home_screen/Features/home/Data/models/best_seller.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/Repositories/home_repository.dart';

class GetBestSellers {
  final HomeRepository repository;

  GetBestSellers({required this.repository});

  Future<List<BestSeller>> call() async {
    return await repository.getBestSellers();
  }
}
