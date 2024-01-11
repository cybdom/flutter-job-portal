import 'package:flutter/material.dart';

class MyBottomNavItem extends StatelessWidget {
  final GestureTapCallback onPressed;
  final int active;
  final int id;
  final IconData icon;
  final String text;

  const MyBottomNavItem(
      {super.key,
      required this.onPressed,
      required this.active,
      required this.id,
      required this.icon,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        active == id
            ? Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.apply(color: Colors.red),
              )
            : Container(),
        active == id
            ? Container()
            : Flexible(
                child: IconButton(
                  icon: Icon(
                    icon,
                    color: Colors.grey,
                  ),
                  onPressed: onPressed,
                ),
              ),
        Flexible(
          child: active == id
              ? Container(
                  margin: EdgeInsets.only(top: 9.0),
                  height: 5,
                  width: 5,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                )
              : Container(
                  height: 5,
                  width: 5,
                ),
        ),
      ],
    );
  }
}
