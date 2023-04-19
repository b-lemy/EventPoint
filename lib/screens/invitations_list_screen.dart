import 'package:flutter/material.dart';

import 'invitations_detail_screen.dart';

class InvitationsListScreen extends StatefulWidget {
  const InvitationsListScreen({super.key});

  @override
  State<InvitationsListScreen> createState() => _InvitationsListScreenState();
}

class _InvitationsListScreenState extends State<InvitationsListScreen> {
  final double edgePadding = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(edgePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const InvitationsDetailScreen())));
                          },
                          alignment: Alignment.center,
                          icon: const Icon(Icons.chevron_left_outlined),
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'INVITATION',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem Ipsum dolor sit amet veni vidi vici.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    children: const [
                      NoInvitationWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoInvitationWidget extends StatelessWidget {
  const NoInvitationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30,
      ),
      child: Column(
        children: [
          const Text(
            'You have no invitations!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Lorem ipsum dolor sit amet.veni vidi vici. Lorem vici dolor vidi amet sit vici. Lorem ipsum dolor sit amet.',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/home1.jpg'),
        ],
      ),
    );
  }
}

class InvitationDetailCard extends StatelessWidget {
  const InvitationDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BIRTHDAY PARTY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet. Veni vidi vici. Lorem veni dolor sit vici.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right_outlined,
                ))
          ],
        ),
      ),
    );
  }
}
