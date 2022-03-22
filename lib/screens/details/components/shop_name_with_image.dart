import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Shop.dart';

class ShopNameWithImage extends StatelessWidget {
  Shop shop;
  ShopNameWithImage({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Shop Name",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            shop.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              SizedBox(width: 100),
              Expanded(
                child: Hero(
                  tag: "${shop.shopId}",
                  child: Image.asset(
                    shop.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
