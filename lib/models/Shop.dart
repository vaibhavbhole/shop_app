import 'package:flutter/material.dart';

class Shop {
  final String image, name, description, ownerName, contactNo, address;
  final int shopId;
  final Color color;

  Shop(
      {required this.shopId,
      required this.image,
      required this.name,
      required this.description,
      required this.ownerName,
      required this.contactNo,
      required this.address,
      required this.color});
}

List<Shop> shops = [
  Shop(
      shopId: 1,
      name: "BMW",
      ownerName: "Susane Klatten",
      description: dummyText,
      contactNo: "9988998833",
      address: "Karol Bagh, Delhi",
      image: "assets/images/bmw.png",
      color: const Color(0xFF6699CC)),
  Shop(
      shopId: 2,
      name: "Ferrari Cars",
      ownerName: "John Alkan",
      description: dummyText,
      contactNo: "9988998833",
      address: "Chandni Chowk, Delhi",
      image: "assets/images/ferrari.png",
      color: const Color(0xFFF7CB15)),
  Shop(
      shopId: 3,
      name: "Fiat",
      ownerName: "Maxime Picat",
      description: dummyText,
      contactNo: "9988998833",
      address: "Taj Palace, Mumbai",
      image: "assets/images/fiat.png",
      color: const Color(0xFFFF7F7F)),
  Shop(
      shopId: 4,
      name: "Huion",
      ownerName: "Henry Xu",
      description: dummyText,
      contactNo: "9988998833",
      address: "Xianjian, China",
      image: "assets/images/huion.png",
      color: const Color(0xFF75816B)),
  Shop(
      shopId: 5,
      name: "Jaguar",
      ownerName: "Ralf Speth",
      description: dummyText,
      contactNo: "9988998833",
      address: "Shankar nagar, Nagpur",
      image: "assets/images/jaguar.png",
      color: const Color(0xFF6699CC)),
  Shop(
      shopId: 6,
      name: "KIA",
      ownerName: "Chung Ju-yung",
      description: dummyText,
      contactNo: "9988998833",
      address: "Shanghai, China",
      image: "assets/images/kia.png",
      color: const Color(0xFFFF7F7F)),
  Shop(
      shopId: 7,
      name: "Mini Cooper",
      ownerName: "Kunchacko Boban",
      description: dummyText,
      contactNo: "9988998833",
      address: "Kerala, India",
      image: "assets/images/mini-cooper.png",
      color: const Color(0xFFA7A6BA )),
  Shop(
      shopId: 8,
      name: "Nissan",
      ownerName: "Luca De Meo",
      description: dummyText,
      contactNo: "9988998833",
      address: "Bulogne, France",
      image: "assets/images/nissan.png",
      color: const Color(0xFF6699CC)),
  Shop(
      shopId: 9,
      name: "Tesla",
      ownerName: "Elon Musk",
      description: dummyText,
      contactNo: "9988998833",
      address: "Californi, USA",
      image: "assets/images/tesla.png",
      color: const Color(0xFFFF7F7F)),
  Shop(
      shopId: 10,
      name: "Volkswagen",
      ownerName: "Wolfgang Porsche",
      description: dummyText,
      contactNo: "9988998833",
      address: "Stuttgart , Germany",
      image: "assets/images/volkswagen.png",
      color: const Color(0xFF6699CC))
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
