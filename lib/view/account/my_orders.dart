import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zanjabeel/constants/app_colors.dart';
import 'package:zanjabeel/view/orders/order_details_screen.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        "orderId": "#12345",
        "price": "10.00 QAR",
        "items": "Animal Style Fries-Regular (1), Salted Strips-Regular (2)",
        "status": "Delivered",
      },
      {
        "orderId": "#12346",
        "price": "25.00 QAR",
        "items":
            "Animal Style Fries-Regular (1), Salted Strips-Regular (2), Loaded Luxe (1)",
        "status": "Delivered",
      },
      {
        "orderId": "#12347",
        "price": "15.00 QAR",
        "items":
            "Animal Style Fries-Regular (1), Salted Strips-Regular (2), Loaded Luxe (1)",
        "status": "Delivered",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/appbar.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(child: Text('App Bar Image')),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.3),
                          ),
                          padding: const EdgeInsets.all(7),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'My Orders',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryRed,
                  fontFamily: "Texturina",
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: orders.length,
              separatorBuilder: (_, __) => const Divider(
                color: Color.fromARGB(255, 66, 66, 66),
                thickness: 0.1,
              ),
              itemBuilder: (context, index) {
                final order = orders[index];
                return InkWell(
                  onTap: () {
                    Get.to(OrderDetailsScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order: ${order['orderId']}",
                              style: const TextStyle(
                                fontSize: 11,
                                color: Color.fromARGB(255, 53, 53, 53),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              order['status']!,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 20, 138, 4),
                                fontSize: 11,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Text(
                          order['price']!,
                          style: const TextStyle(
                            fontSize: 10,
                            color: AppColors.primaryRed,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          order['items']!,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 139, 139, 139),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
