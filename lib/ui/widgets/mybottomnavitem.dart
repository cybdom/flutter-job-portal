import 'package:flutter/material.dart';
class MyBottomNavItem extends StatelessWidget {
  const MyBottomNavItem({
    Key key,
    @required int active,
    @required this.onPressed,
    @required this.id,
    @required this.icon,
    @required this.text,
  })  : _active = active,
        super(key: key);
  final GestureTapCallback onPressed;
  final int _active;
  final int id;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _active == id
            ? Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .overline
                    .apply(color: Colors.red),
              )
            : Container(),
        _active == id
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
          child: _active == id
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