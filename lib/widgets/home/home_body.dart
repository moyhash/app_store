import 'package:app_store/constants.dart';
import 'package:app_store/models/product.dart';
import 'package:app_store/screens/details_screen.dart';
import 'package:app_store/widgets/home/product_cart.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70.0),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                // classe Container appeler ici
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  DetailsScreen(product: products[index]), 
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
