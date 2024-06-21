import 'package:slash_responsive_home_screen/Features/home/Data/models/recommended_item.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/Repositories/home_repository.dart';

class GetRecommended {
  final HomeRepository repository;

  GetRecommended({required this.repository});

  Future<List<RecommendedItem>> call() async {
    return await repository.getRecommended();
  }
}
