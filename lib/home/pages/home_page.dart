import 'package:flutter/material.dart';
import 'package:mygp/list_of_functionality/everything_at_glance.dart';
import 'package:mygp/offerCards/lists_img_offers.dart';
import 'package:mygp/offerCards/offer_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 70,
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      " MyGp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
            backgroundColor: Colors.white,
            leading: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'images/gplogo.png',
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const EverythingAtGlance(),
                const SizedBox(
                  height: 20,
                ),
                for (int i = 0; i < titles.length; i++) ...[
                  OfferCards(
                    img: images[i],
                    title: titles[i],
                    onPressed: onPressedcard[i],
                  ),
                  const SizedBox(
                    height: 2,
                  )
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
