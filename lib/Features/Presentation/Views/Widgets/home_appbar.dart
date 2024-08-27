import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppbar({super.key})
      : preferredSize =
            const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "News",
              ),
              TextSpan(
                text: "App",
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
      ),
    );
  }
}
