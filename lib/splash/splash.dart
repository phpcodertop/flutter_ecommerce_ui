import 'package:flutter/material.dart';
import '../home/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/tech.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: size.height / 2 - 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Brand New perspective',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Let\'s start with our summer collections',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const Home(),));
                    },
                    child: Container(
                      width: size.width,
                      margin: const EdgeInsets.only(right: 30),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Home(),));
                    },
                    child: Container(
                      width: size.width,
                      margin: const EdgeInsets.only(right: 30),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                        // border: Border.all(color: Colors.white),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: const Center(
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
