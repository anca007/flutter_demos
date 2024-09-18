import 'package:flutter/material.dart';

void main() {
  runApp(const Shop());
}

class Product extends StatefulWidget {
  ShopState? shopState;
  String name;
  double price;

  Product({required this.name, required this.price, Key? key, this.shopState})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProductState();
  }
}

class ProductState extends State<Product> {
  int number = 0;

  double getTotalPrice() {
    return number * widget.price;
  }

  void incrementProduct() {
    setState(() {
      number++;
      widget.shopState?.getTotal();
    });
  }

  void removeProduct() {
    setState(() {
      if (number - 1 >= 0) {
        number--;
        widget.shopState?.getTotal();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(widget.name),
        Text("${widget.price} €"),
        FilledButton(
            onPressed: () {
              incrementProduct();
            },
            child: Icon(Icons.add)),
        Text(number.toString()),
        FilledButton(
            onPressed: () {
              removeProduct();
            },
            child: Icon(Icons.minimize))
      ],
    );
  }
}

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<StatefulWidget> createState() {
    return ShopState();
  }
}

class ShopState extends State<Shop> {
  double total = 0;

  // List<Product> listeOfProducts = [
  //   Product(name: "Clavier", price: 50),
  //   Product(name: "Ecran", price: 200.99),
  //   Product(name: "Manette", price: 45.99),
  //   Product(name: "Stylo", price: 1.50)
  // ];

  final productKey = [
    GlobalKey<ProductState>(),
    GlobalKey<ProductState>(),
    GlobalKey<ProductState>(),
    GlobalKey<ProductState>(),
  ];

  void getTotal() {
    setState(() {
      total = 0;
      for (var key in productKey) {
        total += key.currentState!.getTotalPrice();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Product(
                shopState: this,
                name: "Clavier",
                price: 50,
                key: productKey[0]),
            Product(
                shopState: this,
                name: "Ecran",
                price: 200.99,
                key: productKey[1]),
            Product(
                shopState: this,
                name: "Manette",
                price: 45.99,
                key: productKey[2]),
            Product(
                shopState: this,
                name: "Stylo",
                price: 1.50,
                key: productKey[3]),
            Text("Total : ${total} €")
          ],
        ),
      ),
    );
  }
}
