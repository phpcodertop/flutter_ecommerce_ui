import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_boxes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // top section
            SizedBox(
              height: size.height / 1.6,
              width: size.width,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/background.jpg',
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: size.height / 1.6,
                    width: size.width,
                    color: Colors.black.withOpacity(0.5),
                  ),

                  // icons
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            size: 40,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),

                  const Positioned(
                    bottom: 10,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our New Products',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          'View More >',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // categories
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 150,
                    width: size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      children: const [
                        HomeBoxes(
                          title: 'Beauty',
                          imagePath: 'assets/images/beauty.jpg',
                        ),
                        HomeBoxes(
                          title: 'Clothes',
                          imagePath: 'assets/images/clothes.jpg',
                        ),
                        HomeBoxes(
                          title: 'Perfume',
                          imagePath: 'assets/images/perfume.jpg',
                        ),
                        HomeBoxes(
                          title: 'Glass',
                          imagePath: 'assets/images/glass.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // best selling
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Selling By Category',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 150,
                    width: size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      children: const [
                        HomeBoxes(
                          title: 'Tech',
                          imagePath: 'assets/images/tech.jpg',
                        ),
                        HomeBoxes(
                          title: 'Watch',
                          imagePath: 'assets/images/watch.jpg',
                        ),
                        HomeBoxes(
                          title: 'Perfume',
                          imagePath: 'assets/images/perfume.jpg',
                        ),
                        HomeBoxes(
                          title: 'Glass',
                          imagePath: 'assets/images/glass.jpg',
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

