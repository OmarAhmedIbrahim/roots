import 'package:flutter/material.dart';
class DirectAuthenticationWidget extends StatelessWidget {
  const DirectAuthenticationWidget({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 80,
        height: 80,
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}
