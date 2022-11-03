import 'package:app_store/constants.dart';
import 'package:app_store/models/product.dart';
import 'package:app_store/widgets/details/color_dot.dart';
import 'package:app_store/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          //height: 300.0,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                  //image: 'images/sony_cueue.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
               Text(
                'Prix: ${product.price}',
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child:  Text(
            product.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
