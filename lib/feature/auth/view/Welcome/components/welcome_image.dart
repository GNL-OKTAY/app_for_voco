import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 10,
          child: Image.asset(
            "assets/icons/grpip.png",
            fit: BoxFit.cover,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

class WelcomeImage2 extends StatelessWidget {
  const WelcomeImage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          cardMe("assets/images/beauty.jpeg", "beauty"),
          cardMe("assets/images/car-servicess.jpg", "Araba Tamiri"),
          cardMe("assets/images/animals.jpg", "Veteriner"),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          cardMe("assets/images/beauty.jpeg", "beauty"),
          cardMe("assets/images/beauty.jpeg", "beauty"),
          cardMe("assets/images/beauty.jpeg", "beauty"),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          cardMe("assets/images/beauty.jpeg", "beauty"),
          cardMe("assets/images/beauty.jpeg", "beauty"),
          cardMe("assets/images/beauty.jpeg", "beauty"),
        ]),
      ],
    );
  }

  Padding cardMe(String imagePat, String name) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            // color: const Color.fromARGB(0, 0, 0, 0),
            // image: DecorationImage(
            //   colorFilter: ColorFilter.mode(
            //     const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3), // Buradaki 0.5 şeffaflık seviyesini temsil eder
            //     BlendMode.darken,
            //   ),
            //   image: Image.asset(imagePat, fit: BoxFit.cover).image,
            // ),
          ),
          width: 200,
          height: 200,
          child: Center(
              child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ))),
    );
  }
}
