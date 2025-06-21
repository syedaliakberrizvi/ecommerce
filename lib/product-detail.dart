import 'package:final_project/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String product_detail;

  const ProductDetail({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.product_detail,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // fix alignment
                children: [
                  Image.asset(imagePath),
                  SizedBox(height: 20),
                  Text(
                    "Size: 7UK",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.pink, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "6 UK",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 50,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.pink, // Background pink
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "7 UK",
                            style: TextStyle(
                              color: Colors.white, // Text white
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 50,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.pink, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "8 UK",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 50,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.pink, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "9 UK",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(description, style: TextStyle(fontSize: 10)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Color.fromARGB(255, 255, 235, 53),
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Color.fromARGB(255, 255, 235, 53),
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Color.fromARGB(255, 255, 235, 53),
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Color.fromARGB(255, 255, 235, 53),
                      ),
                      Icon(
                        Icons.star_half,
                        size: 18,
                        color: Color.fromARGB(255, 159, 157, 149),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Product Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(product_detail),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ), // Black border
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .location_on_sharp, // You can change to any icon
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Nearest Store",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ), // Black border
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .lock_outline_sharp, // You can change to any icon
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "VIP",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ), // Black border
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.repeat, // You can change to any icon
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Return policy",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -20,
                                top: 5,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Go to cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 11, 229, 76),
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -20,
                                top: 5,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 11, 229, 76),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.touch_app_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  " Buy Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Image.asset("projectimages/within.png")],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 155,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            233,
                            233,
                          ), // Background color
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ), // Black border
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .remove_red_eye_rounded, // You can change to any icon
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "View Similar",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),

                      Container(
                        width: 155,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            233,
                            233,
                          ), // Background color
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ), // Black border
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .mobile_friendly_rounded, // You can change to any icon
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Add to Compare",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Similar To",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "282+ Iteams ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(
                          imagePath: "projectimages/mark-1.png",
                          title: "NIke Sneakers",
                          description:
                              "Nike Air Jordan Retro 1 Low Mystic Black",
                          price: "RS/1900",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                        SizedBox(width: 10),
                        ProductCard(
                          imagePath: "projectimages/mark-2.png",
                          title: "NIke Sneakers",
                          description:
                              "Mid Peach Mocha Shoes For Man White Black Pink S...",
                          price: "RS/2100",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
