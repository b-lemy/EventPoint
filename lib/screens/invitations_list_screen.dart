import 'package:digital_invitation_card/constants/assets_path.dart';
import 'package:flutter/material.dart';

import 'invitations_detail_screen.dart';

class InvitationsListScreen extends StatefulWidget {
  const InvitationsListScreen({super.key});

  @override
  State<InvitationsListScreen> createState() => _InvitationsListScreenState();
}

class _InvitationsListScreenState extends State<InvitationsListScreen> {
  bool isEventAvaliable = false;
  final double edgePadding = 30;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 8), () {
      setState(() {
        isEventAvaliable = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            buildPageHeader(size),
            buildBodyContents(),
          ],
        ),
      ),
    );
  }

  Widget buildPageHeader(Size size) {
    return Container(
      height: size.height * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsPath.homeImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(edgePadding),
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    alignment: Alignment.center,
                    icon: const Icon(Icons.chevron_left_outlined),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('INVITATION',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Lorem Ipsum dolor sit amet veni vidi vici.',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBodyContents() {
    return Padding(
      padding: EdgeInsets.all(edgePadding),
      child: isEventAvaliable
          ? buildEventCard(
              'BIRTHDAY PARTY',
              'Irene Scarion 25th Birthaday Party  at Makumbusho Hall Kijitonyama',
              '2022-11-14 1:55 PM')
          : buildNoEventCard(),
    );
  }

  Widget buildEventCard(String header, String body, String date) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 130,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 23,
                backgroundColor: Color(0xFF3F3D56),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      header,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: const Color(0xFF2A2C2E)),
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: Text(
                        body,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: const Color(0xFF6B6C6D)),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      date,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: const Color(
                              0xFF2F2E41,
                            ),
                            fontWeight: FontWeight.w200,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Center(
                child: GestureDetector(
                  child: const Icon(
                    Icons.navigate_next,
                    color: Color(0xFF3C3F41),
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InvitationsDetailScreen(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNoEventCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30,
      ),
      child: Column(
        children: [
          Text('You have no invitations!',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: const Color(0xFF3C3F41))),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Lorem ipsum dolor sit amet.veni vidi vici. Lorem vici dolor vidi amet sit vici. Lorem ipsum dolor sit amet.',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: const Color(0xFF818181)),
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
      margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
                icon: const Icon(
                  Icons.chevron_right_outlined,
                ))
          ],
        ),
      ),
    );
  }
}
