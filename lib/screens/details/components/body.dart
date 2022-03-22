import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Shop.dart';
import 'package:shop_app/screens/details/components/shop_name_with_image.dart';

class Body extends StatelessWidget {
  Shop shop;
  Body({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(shop.address),
                      SizedBox(height: kDefaultPaddin / 2),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${shop.ownerName}",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPaddin),
                        child: Text(
                          shop.description,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:kDefaultPaddin),
                        child: Row(
                          children: [Expanded(
                            child: SizedBox(
                              height: 50,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Call Now".toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ShopNameWithImage(shop: shop),
              ],
            ),
          )
        ],
      ),
    );
  }
}
