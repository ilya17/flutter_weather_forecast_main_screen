import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidget createState() => _CounterWidget();
}

class _CounterWidget extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: const Icon(Icons.remove_outlined),
                onPressed: () => {
                  setState(() {
                    _counter -= 1;
                  })
                }),
            Text(_counter.toString()),
            IconButton(
                icon: const Icon(Icons.add_outlined),
                onPressed: () => {
                  setState(() {
                    _counter += 1;
                  })
                })
          ],
        ),
      ),
    );
  }
}
