import 'dart:ffi';

import 'package:demo/boarding_pass.dart';
import 'package:demo/calender.dart';
import 'package:demo/location_details.dart';
import 'package:demo/searchflight.dart';
import 'package:demo/travellers.dart';
import 'package:flutter/material.dart';

class BookFlight extends StatefulWidget {
  const BookFlight({super.key});

  @override
  State<BookFlight> createState() => _BookFlightState();
}

class _BookFlightState extends State<BookFlight> {
  DateTime _datetime = DateTime.now();
  DateTime _Datetime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Positioned(
                top: 62,
                left: 22,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Book Your",
                        style: TextStyle(
                            fontSize: 33,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlayfairDisplay'),
                      ),
                      Text(
                        "Next Flight",
                        style: TextStyle(
                            fontSize: 33,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlayfairDisplay'),
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 14,
              left: 20,
              right: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(color: Colors.green, blurRadius: 10)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, bottom: 20, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "We make your travel fun!!!",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PlayfairDisplay'),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "From",
                            style: TextStyle(fontSize: 15, color: Colors.teal),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 43,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(children: [
                                Icon(
                                  Icons.flight_takeoff,
                                  color: Colors.teal,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Departure",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.teal),
                                )
                              ]),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "To",
                            style: TextStyle(fontSize: 15, color: Colors.teal),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 43,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                const Icon(
                                  Icons.flight_land,
                                  color: Colors.teal,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Arrival",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.teal),
                                )
                              ]),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Depart",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.teal),
                            ),
                            Row(
                              children: [
                                Text(
                                  _datetime.toString().split(" ")[0],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      DateTime? datePicked =
                                          await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate:
                                                      DateTime(2010, 10, 10),
                                                  lastDate:
                                                      DateTime(2030, 10, 10))
                                              .then((value) {
                                        setState(() {
                                          _datetime = value!;
                                        });
                                      });
                                    },
                                    icon: const Icon(Icons.calendar_month))
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Arrive",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.teal),
                            ),
                            Row(
                              children: [
                                Text(
                                  _Datetime.toString().split(" ")[0],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      DateTime? datePicked =
                                          await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate:
                                                      DateTime(2010, 10, 10),
                                                  lastDate:
                                                      DateTime(2030, 10, 10))
                                              .then((value) {
                                        setState(() {
                                          _Datetime = value!;
                                        });
                                      });
                                    },
                                    icon: const Icon(Icons.calendar_month))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Traveller",
                        style: TextStyle(fontSize: 15, color: Colors.teal),
                      ),
                    ),
                    const travellers(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: searchflight(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notification',
          ),
        ],
        selectedItemColor: Colors.green,
      ),
    );
  }
}
