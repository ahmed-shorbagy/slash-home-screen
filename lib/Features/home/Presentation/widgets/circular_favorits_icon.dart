import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/constants.dart';

class CircularFavorietsIcon extends StatefulWidget {
  const CircularFavorietsIcon({
    super.key,
  });

  @override
  State<CircularFavorietsIcon> createState() => _CircularFavorietsIconState();
}

bool isFavorite = false;

class _CircularFavorietsIconState extends State<CircularFavorietsIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5.5),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xffEEEEEE)),
        child: isFavorite
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : const Icon(
                Icons.favorite_border_outlined,
                color: kPrimaryColor,
              ),
      ),
    );
  }
}
