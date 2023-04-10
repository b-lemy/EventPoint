import 'package:digital_invitation_card/screens/notification.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.phoneNumber}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final phoneNumber;

  final userNamePhoneNumber = {"0789217400": "Irene", "0736614216": "Scarion"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: const Color(0xFF3D4245),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  )
                },
      
                // Handle notification button press
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        userNamePhoneNumber[phoneNumber] != null
                            ? Text(userNamePhoneNumber[phoneNumber]!)
                            : const Text("Unidentified"),
                        Text(phoneNumber)
                      ],
                    ),
                  )
                ],
              ),
            ),
            leadingWidth: 200,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: const <Widget>[
            MyButton(
              icon: Icons.qr_code_2_outlined,
              label: "Event",
              label2: "Manage Events",
            ),
            MyButton(
              icon: Icons.search,
              label: "Invitations",
              label2: "Managing Invitations",
            ),
            MyButton(
              icon: Icons.support_agent,
              label: "Support",
              label2: "Get Help & Support",
            ),
            MyButton(
              icon: Icons.settings,
              label: "Settings",
              label2: "Manage App Settings",
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String label2;

  const MyButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.label2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 0,
              color: const Color(0xFFF1F1F1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  icon,
                  size: 40.0,
                  color: const Color(0xFF3D4245),
                ),
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF25252D)),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              label2,
              style: const TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF616076)),
            )
          ],
        ),
      ),
    );
  }
}
