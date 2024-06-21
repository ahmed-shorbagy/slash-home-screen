import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/section_title.dart';

class DesktopSectionstitles extends StatelessWidget {
  const DesktopSectionstitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SectionTitle(
              title: "Bese Selling",
              onTap: () {},
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SectionTitle(
              title: "New Arrivals",
              onTap: () {},
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SectionTitle(
              title: "Recommended",
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
