import 'package:audi/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mailer/mailer.dart';

class MyBottomSheet extends StatefulWidget {
  final message;
  MyBottomSheet({super.key, required this.message});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Text("Event Details"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  "Event: ${widget.message.data()['eventName'].toString()}",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Organizer: ${widget.message.data()['organizer']}",
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "Starts at: ${DateFormat('dd/MM/yyyy hh:mm a').format(widget.message.data()['datetime_start'].toDate())}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "Ends at: ${DateFormat('dd/MM/yyyy hh:mm a').format(widget.message.data()['datetime_end'].toDate())}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                if (widget.message.data()['phone'] != null)
                  Text("Contact Phone: ${widget.message.data()['phone']}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                if (widget.message.data()['audience_count'] != null)
                  Text(
                      "Audience Count: ${widget.message.data()['audience_count']}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                if (widget.message.data()['requested_by'] != null)
                  Text(
                      "Contact Email: ${widget.message.data()['requested_by']}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                const Text("Event Description: ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(widget.message.data()['description'].toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
