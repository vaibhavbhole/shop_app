import 'package:flutter/material.dart';
import 'package:shop_app/models/Shop.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Shop shop;
  const DetailsScreen({Key? key,required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shop.color,
      appBar: AppBar(
        backgroundColor: shop.color,
        leading: BackButton(color: Colors.black,),
        elevation: 0,
      ),
      body: Body(shop:shop),
    );
  }
}
