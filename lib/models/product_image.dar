import '../constant/constant.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kVPadding),
      height: size.height * .8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * .7,
            height: size.height * .7,
            decoration: const BoxDecoration(
              color: kBgColor,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.height * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
