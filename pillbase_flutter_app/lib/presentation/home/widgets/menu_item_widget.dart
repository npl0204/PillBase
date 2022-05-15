import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  MenuItem(
      {Key? key,
      required this.index,
      required this.navigatingRoute,
      required this.itemIcon,
      required this.itemName})
      : super(key: key);
  int index;
  String navigatingRoute;
  IconData itemIcon;
  String itemName;

  @override
  Widget build(BuildContext context) {
    const radiusBig = Radius.circular(20);
    const radiusSml = Radius.circular(0);
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(navigatingRoute),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: (index == 0 || index == 2)
              ? BorderRadius.only(
                  topLeft: radiusBig,
                  bottomLeft: radiusBig,
                  topRight: (index == 0) ? radiusBig : radiusSml,
                  bottomRight: (index == 2) ? radiusBig : radiusSml,
                )
              : BorderRadius.only(
                  topRight: radiusBig,
                  bottomRight: radiusBig,
                  topLeft: (index == 1) ? radiusBig : radiusSml,
                  bottomLeft: (index == 3) ? radiusBig : radiusSml,
                ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: (index == 1) ? 3 : 2),
            Center(
              child: Icon(itemIcon, size: 35),
            ),
            const Spacer(flex: 1),
            Text(
              itemName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
