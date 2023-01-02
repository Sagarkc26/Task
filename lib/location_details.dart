import 'package:flutter/material.dart';

class locationDetails extends StatefulWidget {
  const locationDetails({super.key});

  @override
  State<locationDetails> createState() => _locationDetailsState();
}

class _locationDetailsState extends State<locationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text("From"),
          Text("data"),
          Text("To"),
          Text("data"),
        ],
      ),
    );
  }
}
