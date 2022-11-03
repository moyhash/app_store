import 'package:app_store/constants.dart';
import 'package:app_store/models/product.dart';
import 'package:flutter/material.dart';

// class ProductCard pour le Contenu et ses child
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      //
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      //color: Colors.green,
      child: InkWell(
        onTap: () {
          press();
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.black54,
                    )
                  ]),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,
                  //"images/Apple-airpod.png",
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200, // notre image width = 200 donc
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Spacer(), // Une Espace
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Spacer(), // Une Espace
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(22.0)),
                        child: Text(
                          'Prix ${product.price}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
