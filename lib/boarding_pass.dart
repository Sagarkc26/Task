import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class boardingPass extends StatefulWidget {
  const boardingPass({super.key});

  @override
  State<boardingPass> createState() => _boardingPassState();
}

class _boardingPassState extends State<boardingPass> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidht,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF80DEEA),
              Color.fromARGB(255, 7, 97, 232),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.05,
              bottom: screenHeight * 0.12,
              child: Container(
                height: screenHeight * 0.6,
                width: screenWidht * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, blurRadius: 20)
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 239, 244, 245),
                      Color.fromARGB(255, 156, 191, 244),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.1,
              left: screenWidht * 0.23,
              child: Container(
                child: const Text(
                  "Boarding Pass",
                  style: TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 251, 249, 249),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PlayfairDisplay'),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.27,
              left: screenWidht * 0.15,
              child: Container(
                height: screenHeight,
                width: screenWidht,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.flight_takeoff,
                            color: Colors.teal,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "PC979",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "KTM",
                        style: TextStyle(
                            fontSize: 43,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlayfairDisplay'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Kathmandu,Nepal"),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "BHW",
                        style: TextStyle(
                            fontSize: 43,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlayfairDisplay'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Bhairahawa,Rupandehi"),
                      const SizedBox(
                        height: 30,
                      ),
                      BarcodeWidget(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.75,
                        data: 'https://github.com/martinovovo',
                        barcode: Barcode.code128(),
                        drawText: false,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Text(
                            "10:40 AM",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "B4",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "21A",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Fri,31 Dec",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 66,
                          ),
                          Text(
                            "Gate",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 57,
                          ),
                          Text(
                            "Seat",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            Positioned(
                top: screenHeight * 0.94,
                left: screenWidht * 0.36,
                child: Container(
                  child: const Text(
                    "Download Ticket",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
