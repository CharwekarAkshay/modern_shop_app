import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modern_shop_app/components/rounded_icon_btn.dart';
import 'package:modern_shop_app/models/Product.dart';

import 'components/custom_app_bar.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   // leading: Padding(
      //   //   padding: const EdgeInsets.only(left: 20),
      //   //   child: RoundedIconButton(
      //   //     iconData: Icons.arrow_back_ios,
      //   //     press: () => Navigator.pop(context),
      //   //   ),
      //   // ),
        
      // ),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
      ),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
