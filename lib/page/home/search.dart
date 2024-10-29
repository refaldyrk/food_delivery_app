import 'package:flutter/material.dart';
import 'package:food_delivery_app/styles.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search';

  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listCategories = [
      "Sandwich",
      "Burger",
      "Pizza",
      "Keong",
      "Bung",
    ];

    return Scaffold(
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
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: homeGrey,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: darkColor,
                    ),
                  ),
                ),
                const Text(
                  'Search',
                  style: TextStyle(
                      color: darkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: TextField(
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                'Recent Keyword',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: grey1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33)),
                        ),
                        child: Container(
                          child: Text(
                            listCategories[index],
                            style: TextStyle(color: darkColor),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Text(
                'Suggested Restaurant',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Card(
                    color: backgroundColor,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/burger.png',
                          width: 50,
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Burger Raksasa'),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: primaryColor,
                                  ),
                                  Text(
                                    '4.3',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Container(
                    height: 144,
                    width: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(24)),
                            width: 153,
                            height: 102,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: const Column(
                                children: [
                                  Text(
                                    'European Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Utara Cafe Jakarta',
                                    style:
                                        TextStyle(color: grey1, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 17,
                          child: Container(
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            height: 84,
                            width: 122,
                            child: Image.asset('assets/images/burger.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Container(
                    height: 144,
                    width: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(24)),
                            width: 153,
                            height: 102,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: const Column(
                                children: [
                                  Text(
                                    'European Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Utara Cafe Jakarta',
                                    style:
                                        TextStyle(color: grey1, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 17,
                          child: Container(
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            height: 84,
                            width: 122,
                            child: Image.asset('assets/images/burger.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Container(
                    height: 144,
                    width: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(24)),
                            width: 153,
                            height: 102,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: const Column(
                                children: [
                                  Text(
                                    'European Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Utara Cafe Jakarta',
                                    style:
                                        TextStyle(color: grey1, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 17,
                          child: Container(
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            height: 84,
                            width: 122,
                            child: Image.asset('assets/images/burger.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Container(
                    height: 144,
                    width: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(24)),
                            width: 153,
                            height: 102,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: const Column(
                                children: [
                                  Text(
                                    'European Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Utara Cafe Jakarta',
                                    style:
                                        TextStyle(color: grey1, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 17,
                          child: Container(
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            height: 84,
                            width: 122,
                            child: Image.asset('assets/images/burger.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Container(
                    height: 144,
                    width: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(24)),
                            width: 153,
                            height: 102,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: const Column(
                                children: [
                                  Text(
                                    'European Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Utara Cafe Jakarta',
                                    style:
                                        TextStyle(color: grey1, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 17,
                          child: Container(
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            height: 84,
                            width: 122,
                            child: Image.asset('assets/images/burger.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Container(
                    height: 144,
                    width: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(24)),
                            width: 153,
                            height: 102,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: const Column(
                                children: [
                                  Text(
                                    'European Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Utara Cafe Jakarta',
                                    style:
                                        TextStyle(color: grey1, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 17,
                          child: Container(
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24)),
                            height: 84,
                            width: 122,
                            child: Image.asset('assets/images/burger.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
