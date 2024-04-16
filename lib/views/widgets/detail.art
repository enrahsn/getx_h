import '../models/product.dart';
import 'package:flutter/material.dart';
import 'package:store/constant/constant.dart';
import '../widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  // final dynamic context;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: detailsAppBar(context),
      body:  DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBgColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kHPadding * 2),
        icon: const Icon(
          Icons.arrow_back,
          color: kalertColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      
      centerTitle: false,
      title: const Text(
        // 'تفاصيل المنتج',
        ' رجوع',
        style:
            TextStyle(color: kMainColor, fontFamily: 'Almarai', fontSize: 16),
      ),
    );
  }
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty('context', context));
  // }
}
