import 'package:flutter/material.dart';

class travellers extends StatefulWidget {
  const travellers({super.key});

  @override
  State<travellers> createState() => _travellersState();
}

class _travellersState extends State<travellers> {
  int _count = 1;
  int _childcount = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  void _childIncrement() {
    setState(() {
      _childcount++;
    });
  }

  void _childDecrement() {
    setState(() {
      _childcount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  _decrement();
                },
                icon: const Icon(Icons.remove)),
            Text("$_count Adults"),
            IconButton(
                onPressed: () {
                  _increment();
                },
                icon: const Icon(Icons.add)),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  _childDecrement();
                },
                icon: const Icon(Icons.remove)),
            Text("$_childcount Childs"),
            IconButton(
                onPressed: () {
                  _childIncrement();
                },
                icon: const Icon(Icons.add)),
          ],
        ),
      ],
    );
  }
}
