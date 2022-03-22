import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Shop.dart';

class ItemCard extends StatelessWidget {
  final Shop shop;
  final VoidCallback press;
  const ItemCard({Key? key,
  required this.shop,required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
              color: shop.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${shop.shopId}",
              child: Image.asset(shop.image),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              shop.name,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
        ],
      ),
    );
  }
}
