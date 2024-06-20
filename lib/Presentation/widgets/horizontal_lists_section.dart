import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/best_selling_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/new_arivals_section.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/recommended_section.dart';

class HorizontalListsSection extends StatelessWidget {
  const HorizontalListsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: BestSellingSection(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: NewArrivalSection(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: RecommededSection(),
        ),
      ],
    );
  }
}
