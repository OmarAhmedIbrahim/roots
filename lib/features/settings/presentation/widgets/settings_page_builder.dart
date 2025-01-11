import 'package:flutter/material.dart';
import '../../../landing/presentation/widgets/landing_decoration.dart';

class SettingsPageBuilder extends StatelessWidget {
  const SettingsPageBuilder({
    super.key,
    required this.text,
    required this.icon, required this.onTap,
  });

  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              text,
              style: primaryTextStyle,
            ),
          ),
          Icon(icon)
        ],
      ),
    );
  }
}
