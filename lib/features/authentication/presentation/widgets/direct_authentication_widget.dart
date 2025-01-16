import 'package:flutter/material.dart';
class DirectAuthenticationWidget extends StatelessWidget {
  const DirectAuthenticationWidget({
    super.key, required this.image, required this.onTap,
  });
  final String image;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
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
