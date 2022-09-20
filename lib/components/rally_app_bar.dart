import 'package:flutter/material.dart';

class RallyAppBar extends StatelessWidget {
  const RallyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: const Color(0Xff33333e),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(
              Icons.bookmark_border,
            ),
            color: Colors.white,
            onPressed: (() {
              Navigator.pushNamed(context, '/home');
            }),
          ),
          IconButton(
            icon: const Icon(Icons.attach_money),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.money_off),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
