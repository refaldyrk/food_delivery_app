import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/home/search.dart';
import 'package:food_delivery_app/styles.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: homeGrey,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: darkColor,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DELIVER TO',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      'Jakarta Selatan Office',
                      style: TextStyle(color: darkColor, fontSize: 14),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: darkColor,
                          shape: const CircleBorder(),
                        ),
                        child: const Icon(
                          Icons.shopping_bag,
                          color: backgroundColor,
                        ),
                      ),
                      Positioned(
                        right: 13,
                        top: -2,
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 20,
                            minHeight: 20,
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 16, color: darkColor),
                    children: [
                      TextSpan(
                          text: 'Hey Efal, ',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Good Afternoon!',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: TextField(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: borderColorGrey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search dishes, restaurant',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: borderColorGrey,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.search, color: primaryColor),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Categories',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 16, color: primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 230,
                      child: ListView.builder(
                        itemCount: 100,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            color: backgroundColor,
                            clipBehavior: Clip.antiAlias,
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    color: backgroundColor,
                                    clipBehavior: Clip.antiAlias,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Image.asset(
                                        'assets/images/burger.png',
                                        width: 122,
                                        height: 104,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Burger',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Starting',
                                          style: TextStyle(
                                              color: grey1, fontSize: 14),
                                        ),
                                        SizedBox(width: 40),
                                        Text(
                                          "30K",
                                          style: TextStyle(
                                              color: darkColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Open Restaurants',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 16, color: primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: backgroundColor,
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                border: Border.all(color: white1, width: 2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/restaurant.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 5),
                              child: Text(
                                'Rose Garden Restaurant',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 5),
                              child: Text(
                                'Burger - Elite - Couple',
                                style: TextStyle(fontSize: 14, color: grey1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 5),
                              child: Row(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                            child: Icon(
                                          size: 20,
                                          weight: 20,
                                          Icons.star_border,
                                          color: primaryColor,
                                        )),
                                        TextSpan(
                                            text: " 4.7",
                                            style: TextStyle(
                                                color: darkColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                            child: Icon(
                                          size: 20,
                                          weight: 20,
                                          Icons.local_shipping_outlined,
                                          color: primaryColor,
                                        )),
                                        TextSpan(
                                            text: " Free",
                                            style: TextStyle(
                                                color: darkColor, fontSize: 16))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                            child: Icon(
                                          size: 20,
                                          weight: 20,
                                          Icons.access_time_rounded,
                                          color: primaryColor,
                                        )),
                                        TextSpan(
                                            text: " 20 min",
                                            style: TextStyle(
                                                color: darkColor, fontSize: 16))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
