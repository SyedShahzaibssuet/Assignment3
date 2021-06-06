import 'package:flutter/material.dart';

class Product {
  var image, title, description;
  var price, quantity, id;
  var color;
  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.quantity,
    this.color,
    this.image,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Hp Probook 6470b",
      description: "HDD 320 GB, 8 GB RAM",
      price: 25000,
      quantity: 14,
      color: Colors.grey,
      image: "assets/images/image1.jpg"),
  Product(
      id: 2,
      title: "Hp Probook 6464b",
      description: "HDD 320 GB, 4 GB RAM",
      price: 30000,
      quantity: 15,
      color: Colors.grey,
      image: "assets/images/image1.jpg"),
  Product(
      id: 3,
      title: "Lenovo ",
      description: "HDD 320 GB, 8 GB RAM",
      price: 25000,
      quantity: 15,
      color: Colors.grey,
      image: "assets/images/image1.jpg"),
  Product(
      id: 4,
      title: "Hp Probook 6470b",
      description: "HDD 320 GB, 8 GB RAM",
      price: 25000,
      quantity: 14,
      color: Colors.grey,
      image: "assets/images/image1.jpg"),
  Product(
      id: 5,
      title: "Lenovo ",
      description: "HDD 320 GB, 8 GB RAM",
      price: 25000,
      quantity: 15,
      color: Colors.grey,
      image: "assets/images/image1.jpg"),
  Product(
      id: 6,
      title: "Hp Probook 6470b",
      description: "HDD 320 GB, 8 GB RAM",
      price: 25000,
      quantity: 14,
      color: Colors.grey,
      image: "assets/images/image1.jpg")
];
