//import 'package:digital_invitation_card/screens/home.dart';
import 'package:flutter/material.dart';
//import 'package:intl_phone_field/phone_number.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final notify = {
    "data": [
      {
        "heading": "Update Version",
        "information": "Now the system is running with the new version info",
        "type": "information",
        "date": "06/04/2023",
      },
      {
        "heading": "Oops something went wrong",
        "information": "Sorry! there is a problem with your request",
        "type": "warning",
        "date": "06/04/2023",
      },
      {
        "heading": "Invitations",
        "information": "Now the system is running with the info",
        "type": "invitation",
        "date": "06/04/2023",
      }
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Title(
              color: Colors.white,
              child: const Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          backgroundColor: const Color(0xFF3D4245)),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
        child: ListView.builder(
            itemCount: notify["data"]?.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 3,
                          height: 40,
                          color:
                              notify["data"]![index]["type"]! == "information"
                                  ? Colors.green
                                  : notify["data"]![index]["type"]! == "warning"
                                      ? Colors.red
                                      : Colors.orange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          notify["data"]![index]["type"]! == "information"
                              ? Icons.info_rounded
                              : notify["data"]![index]["type"]! == "warning"
                                  ? Icons.warning_outlined
                                  : Icons.check_circle_outline_outlined,
                          color:
                              notify["data"]![index]["type"]! == "information"
                                  ? Colors.green
                                  : notify["data"]![index]["type"]! == "warning"
                                      ? Colors.red
                                      : Colors.orange,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notify["data"]![index]["heading"]!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 290,
                            child: Wrap(
                              children: [
                                Text(
                                  notify["data"]![index]["information"]!,
                                  style: const TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            notify["data"]![index]["date"]!,
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      // Container(
      //   width: 500,
      //   height: 230,
      //   decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: <Color>[
      //       Colors.black38,
      //       Colors.black54,
      //       Colors.black,
      //     ],
      //   )),
      //   child: Padding(
      //     padding: const EdgeInsets.only(top: 80.0),
      //     child: Column(
      //       children: [
      //         IconButton(
      //           onPressed: () => {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => HomeScreen(
      //                         phoneNumber: PhoneNumber,
      //                       )),
      //             )
      //           },
      //           icon: const Icon(Icons.arrow_back),
      //         ),
      //         const Text("Notifications",
      //             style: TextStyle(
      //                 fontSize: 28,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.white)),
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}
