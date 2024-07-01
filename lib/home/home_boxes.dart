import 'package:flutter/material.dart';

class HomeBoxes extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function()? onPress;

  const HomeBoxes({
    super.key, required this.imagePath, required this.title, this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 150,
        width: 120,
        margin: const EdgeInsets.only(right: 10),
        // color: Colors.black,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 10,
              child: Text(title, style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
