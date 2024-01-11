import 'package:flutter/material.dart';

class ExperienceLevelWidget extends StatefulWidget {
  @override
  _ExperienceLevelWidgetState createState() => _ExperienceLevelWidgetState();
}

class _ExperienceLevelWidgetState extends State<ExperienceLevelWidget> {
  int _active = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                _active = 0;
              });
            },
            child: Text(
              "Entry Level",
              style: _active == 0
                  ? Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.apply(color: Colors.blue)
                  : Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.apply(color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _active = 1;
              });
            },
            child: Text(
              "Mid Level",
              style: _active == 1
                  ? Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.apply(color: Colors.blue)
                  : Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.apply(color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _active = 2;
              });
            },
            child: Text(
              "Senior Level",
              style: _active == 2
                  ? Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.apply(color: Colors.blue)
                  : Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.apply(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
