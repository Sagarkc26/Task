import 'package:demo/boarding_pass.dart';
import 'package:flutter/material.dart';

class searchflight extends StatefulWidget {
  const searchflight({super.key});

  @override
  State<searchflight> createState() => _searchflightState();
}

class _searchflightState extends State<searchflight> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 290,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.green[400]),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const boardingPass();
            }));
          },
          child: const Text(
            "Search Flights",
            style: TextStyle(color: Colors.black87),
          )),
    );
  }
}
