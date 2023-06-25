import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final Widget image;
  final Function() onClick;
  const HomeItem(
      {super.key,
      required this.title,
      required this.image,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Flexible(child: image),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
