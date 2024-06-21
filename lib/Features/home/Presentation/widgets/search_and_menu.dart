import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/AppIcons.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/custom_text_field.dart';

class SearchAndMenu extends StatelessWidget {
  const SearchAndMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          fit: FlexFit.tight,
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomTextField(),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox(
            height: 48, // Match the height of the CustomTextField
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffE4E4E4),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Image.asset(
                  color: const Color(0xff5F5F5F),
                  Assets
                      .iconsHorizontalSlider2, // Ensure this path matches your actual asset path
                  scale: 0.7,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
