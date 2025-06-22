import 'package:final_project/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:final_project/widgets/product_card.dart';

class Wishlist extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final VoidCallback? onBackPressed;

  const Wishlist({required this.navigatorKey, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomHeader(
          showDrawerIcon: true,
          onBackPressed: onBackPressed,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),

                  // Search Field
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

                  // Info Row
                  Row(
                    children: [
                      Text(
                        "52,082+ Items ",
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
                  SizedBox(height: 20),

                  // Horizontal Split View for Products
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // LEFT COLUMN
                      Expanded(
                        child: Column(
                          children: [
                            ProductCard(
                              imagePath: "projectimages/wish-1.png",
                              title: "Black Winter",
                              description:
                                  "Autumn And Winter Casual cotton-padded jacket...",
                              price: "RS/1500",
                              product_detail: "Long detail here...",
                            ),
                            SizedBox(height: 16),
                            ProductCard(
                              imagePath: "projectimages/wish-3.png",
                              title: "Black Dress",
                              description:
                                  "Solid Black Dress for Women, Sexy Chain Shorts Ladi...",
                              price: "RS/2499",
                              product_detail: "Long detail here...",
                            ),
                            SizedBox(height: 16),
                            ProductCard(
                              imagePath: "projectimages/wish-5.png",
                              title: "Flare Dress",
                              description:
                                  "Antheaa Black & Rust Orange Floral Print Tiered Midi F...",
                              price: "RS/1999",
                              product_detail: "Long detail here...",
                            ),
                            SizedBox(height: 16),
                            ProductCard(
                              imagePath: "projectimages/wish-7.png",
                              title: "Realme 7",
                              description:
                                  "6 GB RAM | 64 GB ROM | Expandable Upto 256...",
                              price: "RS/44999",
                              product_detail: "Long detail here...",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),

                      // RIGHT COLUMN
                      Expanded(
                        child: Column(
                          children: [
                            ProductCard(
                              imagePath: "projectimages/wish-2.png",
                              title: "Mens Starry",
                              description:
                                  "Mens Starry Sky Printed Shirt 100% Cotton Fabric",
                              price: "RS/699",
                              product_detail: "Long detail here...",
                            ),
                            SizedBox(height: 16),
                            ProductCard(
                              imagePath: "projectimages/wish-4.png",
                              title: "Pink Embroide",
                              description:
                                  "EARTHEN Rose Pink Embroidered Tiered Max...",
                              price: "RS/4500",
                              product_detail: "Long detail here...",
                            ),
                            SizedBox(height: 16),
                            ProductCard(
                              imagePath: "projectimages/wish-6.png",
                              title: "Jordan Stay",
                              description:
                                  "The classic Air Jordan 12 to create a shoe that's fres...",
                              price: "RS/11999",
                              product_detail: "Long detail here...",
                            ),
                            SizedBox(height: 16),
                            ProductCard(
                              imagePath: "projectimages/wish-8.png",
                              title: "Sony PS4 ",
                              description:
                                  "Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...",
                              price: "RS/4500",
                              product_detail: "Long detail here...",
                            ),
                          ],
                        ),
                      ),
                    ],
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
