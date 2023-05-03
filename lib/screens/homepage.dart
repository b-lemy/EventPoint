import 'package:digital_invitation_card/screens/carousels.dart';
import 'package:digital_invitation_card/screens/event.dart';
//import 'package:digital_invitation_card/screens/imageslider.dart';
import 'package:flutter/material.dart';
import 'package:digital_invitation_card/screens/notification.dart';
import 'package:digital_invitation_card/screens/invitations_list_screen.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  var data = {
    "0736614216": "Irene Scarion",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFF3F3F3),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 340, 8, 0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: const <Widget>[
                  MyButton(
                      image: 'assets/scan.png',
                      label: "Event",
                      label2: "Manage Events",
                      screenToNavigate: EventScreen()),
                  MyButton(
                      image: 'assets/Exclude.png',
                      label: "Invitations",
                      label2: "Managing Invitations",
                      screenToNavigate: InvitationsListScreen()),
                  MyButton(
                      image: 'assets/ic_baseline-contact-support.png',
                      label: "Support",
                      label2: "Get Help & Support",
                      screenToNavigate: NotificationScreen()),
                  MyButton(
                      image: 'assets/Setting.png',
                      label: "Settings",
                      label2: "Manage App Settings",
                      screenToNavigate: NotificationScreen()),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/homepage.png'), fit: BoxFit.cover),
            ),
            height: MediaQuery.of(context).size.height * .4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 42, 6, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        //backgroundColor: Colors.amber,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 20,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[widget.phoneNumber]!,
                            style: const TextStyle(
                                color: Color(0xFFFCB549),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.phoneNumber,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.notifications),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()),
                      )
                    },
                  ),
                ],
              ),
            ),
          ),
          // Padding(
          //     padding:
          //         const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
          //     child: SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.2,
          //       width: MediaQuery.of(context).size.width * 0.9,
          // child:
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 190, 28, 0),
            child: Container(
              width: 380,
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: SimpleCarouselWidget(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String image;
  final String label;
  final String label2;
  final Widget screenToNavigate;

  const MyButton({
    super.key,
    required this.image,
    required this.label,
    required this.label2,
    required this.screenToNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screenToNavigate),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFF1F1F1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  image,
                  width: 30.0,
                  height: 30.0,
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
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
