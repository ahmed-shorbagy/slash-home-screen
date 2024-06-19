import 'package:slash_responsive_home_screen/Data/models/recommended_item.dart';
import 'package:slash_responsive_home_screen/Domain/Repositories/home_repository.dart';

class GetRecommended {
  final HomeRepository repository;

  GetRecommended(this.repository);

  Future<List<RecommendedItem>> call() async {
    return await repository.getRecommended();
  }
}