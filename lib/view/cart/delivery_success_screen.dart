import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zanjabeel/constants/app_colors.dart';
import 'package:zanjabeel/view/orders/track_order_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: const Image(
                        image: AssetImage('assets/images/success.png'),
                        height: 180,
                        width: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Text(
                      'Order placed successfully',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryRed,
                        fontFamily: "Texturina",
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Home: Street 950, Zone 45, Al Sadd, Doha, Qatar',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontFamily: "Texturina",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
