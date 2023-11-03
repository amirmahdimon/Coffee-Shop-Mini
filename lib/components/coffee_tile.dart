import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.iamgePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
