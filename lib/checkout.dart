import 'package:final_project/homebored.dart';
import 'package:flutter/material.dart';

// ✅ Dummy profile check variable (real app may fetch from database or provider)
bool isProfileComplete = false;

class Cheeckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Shopping Bag",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "projectimages/wish-2.png",
                  width: 100,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Women’s Casual Wear",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Checked Single-Breasted Blazer",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(child: Text("Size 42")),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(child: Text("Qty 1")),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Delivery by 10 May 2025",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.green[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),
            Divider(),
            SizedBox(height: 10),

            Text(
              "Order Payment Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order Amounts", style: TextStyle(fontSize: 14)),
                Text("RS/7000", style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Fee", style: TextStyle(fontSize: 14)),
                Text("Free", style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: 15),
            Divider(),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Amount", style: TextStyle(fontSize: 16)),
                Text("RS/7000", style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("EMI Available", style: TextStyle(fontSize: 14)),
                Text("details", style: TextStyle(color: Colors.red)),
              ],
            ),
            SizedBox(height: 20),
            Divider(),

            Spacer(),

            // ✅ Proceed to Payment Button
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       if (isProfileComplete) {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => Homebored()),
            //         );
            //       } else {
            //         Navigator.pushReplacement(
            //           context,
            //           MaterialPageRoute(builder: (context) => Homebored()),
            //         );
            //       }
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.pink,
            //       padding: EdgeInsets.symmetric(vertical: 16),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //     ),
            //     child: Text(
            //       "Proceed to Payment",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
