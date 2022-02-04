import 'package:flutter/material.dart';

class DigitalText extends StatelessWidget {

  const DigitalText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 270),
      padding: const EdgeInsets.only(
        left: 5,
        top: 5,
        right: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}