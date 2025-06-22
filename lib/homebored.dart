import 'package:final_project/product-detail.dart';
import 'package:final_project/widgets/custom_header.dart';
import 'package:final_project/widgets/product_card.dart';
import 'package:flutter/material.dart';

class Homebored extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final VoidCallback? onBackPressed;

  const Homebored({required this.navigatorKey, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomHeader(
          showDrawerIcon: true,
          navigatorKey: navigatorKey,
          onBackPressed: onBackPressed,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "ALL FEATURED",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text("Sort"),
                      SizedBox(width: 20),
                      Text("Filter"),
                    ],
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryItem(
                          context,
                          "projectimages/circle-image-1.png",
                          "Beauty",
                        ),
                        categoryItem(
                          context,
                          "projectimages/circle-image-2.png",
                          "Fashion",
                        ),
                        categoryItem(
                          context,
                          "projectimages/circle-image-3.png",
                          "Kids",
                        ),
                        categoryItem(
                          context,
                          "projectimages/circle-image-4.png",
                          "Mens",
                        ),
                        categoryItem(
                          context,
                          "projectimages/circle-image-5.png",
                          "Womens",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(
                          imagePath: "projectimages/item-1.png",
                          title: "Women Printed Kurta",
                          description:
                              "Neque porro quisquam est qui dolorem ipsum quia",
                          price: "RS/1500",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                        SizedBox(width: 10),
                        ProductCard(
                          imagePath: "projectimages/item-2.png",
                          title: "Women Printed Kurta",
                          description:
                              "Neque porro quisquam est qui dolorem ipsum quia",
                          price: "RS/2000",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                        SizedBox(width: 10),
                        ProductCard(
                          imagePath: "projectimages/item-3.png",
                          title: "Women Printed Kurta",
                          description:
                              "Neque porro quisquam est qui dolorem ipsum quia",
                          price: "RS/2500",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset("projectimages/mac.png"),
                  SizedBox(height: 15),
                  Image.asset("projectimages/deal of the day.png"),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(
                          imagePath: "projectimages/item-4.png",
                          title: "Labbin White",
                          description: "Sneakers For Male & Female",
                          price: "RS/3500",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                        SizedBox(width: 10),
                        ProductCard(
                          imagePath: "projectimages/item-5.png",
                          title: "Mammon Women's Handbag",
                          description: "(Set of 3, Beige)",
                          price: "RS/1500",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                        SizedBox(width: 10),
                        ProductCard(
                          imagePath: "projectimages/item-6.png",
                          title: "Women Wedges Sandal",
                          description: "(Butterfly)",
                          price: "RS/2300",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                        SizedBox(width: 10),
                        ProductCard(
                          imagePath: "projectimages/item-7.png",
                          title: "Lakme Enrich Matte",
                          description: "Lipstick - Shade RM1(4.7gm)",
                          price: "RS/750",
                          product_detail:
                              "Perhaps the most iconic sneaker of all-time, this original ? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Image.asset("projectimages/Group-1.png"),
                  SizedBox(height: 15),
                  Image.asset("projectimages/Group-2.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Reusable widget for category item
  Widget categoryItem(BuildContext context, String imagePath, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => ProductDetail(
                    imagePath: imagePath,
                    title: label,
                    description: "Sample description here",
                    price: "RS/2500",
                    product_detail: "Full product detail goes here",
                  ),
            ),
          );
        },
        child: Column(
          children: [
            Image.asset(imagePath, height: 60, width: 60),
            SizedBox(height: 5),
            Text(label),
          ],
        ),
      ),
    );
  }
}
