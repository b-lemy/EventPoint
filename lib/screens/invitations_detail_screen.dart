import 'package:digital_invitation_card/constants/assets_path.dart';
import 'package:flutter/material.dart';

class InvitationsDetailScreen extends StatelessWidget {
  const InvitationsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final paddingFromTop = size.height * 0.15;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          right: 27,
          left: 27,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsPath.homeImage), fit: BoxFit.cover),
        ),
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
            )
              //  child:IconButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: ((context) =>
              //                 const InvitationsDetailScreen())));
              //   },
              //   alignment: Alignment.center,
              //   child: buildEventDetailCard(size, context),
              // ),
            
      
          ],
        ),
      ),
    );
  }

  Widget buildEventDetailCard(Size size, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      height: size.height * 0.7,
      width: size.width * 0.85,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 41,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            const Image(
              image: AssetImage(AssetsPath.logo),
              width: 68,
              height: 68,
            ),
            const SizedBox(height: 68),
            const Divider(),
            const SizedBox(height: 32),
            buildEventInfo(context),
            const SizedBox(height: 32),
            const Divider(),
            buildBarCode('38hdhj6578', context)
          ],
        ),
      ),
    );
  }

  Widget buildEventInfoColumn(
      String label, String value, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: const Color(0xFFC5B4B5), fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: const Color(0xFF382C2D), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget buildEventInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildEventInfoColumn('DATE & TIME', 'Feb 25, 11:30pm', context),
            const SizedBox(height: 32),
            buildEventInfoColumn('CARD TYPE', 'Double', context),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildEventInfoColumn('LOCATION', 'Safari Hall', context),
            const SizedBox(height: 32),
            buildEventInfoColumn('SEAT NUMBER', '23, 24', context),
          ],
        ),
      ],
    );
  }

  Widget buildBarCode(String cardCode, BuildContext context) {
    return Column(children: [
      Text(
        'Card Code : $cardCode',
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: const Color(0xFF382C2D)),
      ),
      const Image(
        width: 300,
        height: 80,
        image: AssetImage(AssetsPath.barCode),
      ),
    ]);
  }
}
