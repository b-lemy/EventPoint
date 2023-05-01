import 'package:digital_invitation_card/screens/homepage.dart';
import 'package:flutter/material.dart';

// class EventScreen extends StatefulWidget {
//   const EventScreen({super.key});

//   @override
//   State<EventScreen> createState() => _EventScreenState();
// }

// class _EventScreenState extends State<EventScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Event"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             ToggleButtons(children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Create Invitation",
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               )
//             ], isSelected: isSelected),
//           ],
//         ),
//       ),
//     );
//   }
// }

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  final List<bool> _selections = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 250, 8, 0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.arrow_drop_down),
                        hintText: "Select Event Type",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Select Date",
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.date_range,
                            color: Color(0xFF3D4245),
                          ),
                          onPressed: () async {
                            final date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now()
                                    .subtract(const Duration(days: 100)),
                                lastDate: DateTime.now());
                            if (date != null) {}
                          },
                        ),
                        // suffix: const Icon(
                        //   Icons.date_range,
                        //   color: Color(0xFF3D4245),
                        // ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Event Venue",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    maxLines: 5,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: "Description",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF3D4245)),
                      child: const Text(
                        "Create",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/homepage.png'),
                    fit: BoxFit.cover),
              ),
              height: MediaQuery.of(context).size.height * .3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 42, 6, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Events',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    IconButton(
                      iconSize: 10.0,
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomepageScreen(
                                    phoneNumber: AutofillHints.countryCode,
                                  )),
                        )
                      },
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 160, 8, 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: const Color(0xFFF3F3F3),
                  ),
                  child: ToggleButtons(
                    color: Colors.black,
                    //splashColor: Colors.amber,
                    // highlightColor: Colors.amber,

                    borderRadius: BorderRadius.circular(6.0),
                    selectedColor: Colors.white,
                    fillColor: const Color(0xFFFCB549),
                    isSelected: _selections,
                    onPressed: (index) {
                      setState(() {
                        _selections[index] = !_selections[index];
                        if (index == 0) {
                          _selections[1] = !_selections[0];
                        } else {
                          _selections[0] = !_selections[1];
                        }
                      });
                    },
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 40.0),
                        child: const Text(
                          "create event",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 40.0),
                        child: const Text(
                          "manage events",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
