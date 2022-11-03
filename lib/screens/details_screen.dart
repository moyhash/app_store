import 'package:app_store/constants.dart';
import 'package:app_store/widgets/details/details_body.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(Icons.arrow_back),
        color: kPrimaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'ffffffffffffffffff',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
